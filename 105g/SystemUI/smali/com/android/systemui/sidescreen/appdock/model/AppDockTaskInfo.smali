.class public Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;
.super Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;
.source "AppDockTaskInfo.java"


# instance fields
.field mMainResolveInfo:Landroid/content/pm/ResolveInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private mWindowingMode:I

.field private mkey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->getMainActivityInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iput-object v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mMainResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mMainResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1, v3}, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->makeKeyFromPackage(Landroid/content/pm/ResolveInfo;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mkey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1, v3, v4}, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->makeKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mkey:Ljava/lang/String;

    :goto_0
    iget-object v1, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    iput v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mWindowingMode:I

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mMainResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, v1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->isSupportMultiInstance(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mIsSupportMultiInstance:Z

    const-string v1, "mkey=%s, %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mkey:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mIsSupportMultiInstance:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/android/systemui/sidescreen/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getMainActivityInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->getLauncherPacakges(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockTaskInfo$42JePVUUfupjk1rqOdD_koft6s8;->INSTANCE:Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockTaskInfo$42JePVUUfupjk1rqOdD_koft6s8;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic lambda$getMainActivityInfo$0(Landroid/content/pm/ResolveInfo;)Z
    .locals 4

    sget-object v0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->sBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$startTask$1(Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->getCallback()Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo$ItemCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo$ItemCallback;->removeTask()V

    :cond_0
    return-void
.end method

.method public static makeKeyFromPackage(Landroid/content/pm/ResolveInfo;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->makeKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startTask(Landroid/content/Context;I)V
    .locals 8

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->isSidescreenPrimaryVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x65

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    :cond_1
    :goto_0
    new-instance v7, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockTaskInfo$yeKdKgQrnSDSgU8of6Q7Cq-UOj8;

    invoke-direct {v7, p0}, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockTaskInfo$yeKdKgQrnSDSgU8of6Q7Cq-UOj8;-><init>(Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->getActivityOptions(Landroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object v2

    const/4 v4, 0x1

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move v3, p2

    move-object v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mkey:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    return-object v0
.end method

.method public loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-static {p1}, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->getLoader(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public startApp(Landroid/content/Context;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mIsSupportMultiInstance:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mMainResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->mMainResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->startTask(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

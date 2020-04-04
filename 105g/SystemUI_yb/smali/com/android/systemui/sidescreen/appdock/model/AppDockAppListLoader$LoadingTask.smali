.class Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;
.super Landroid/os/AsyncTask;
.source "AppDockAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static synthetic lambda$doInBackground$0(Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;Landroid/content/pm/ResolveInfo;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->isResizable(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v0, v2}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->access$100(Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/android/systemui/sidescreen/applist/SidescreenAppListActivity;->sBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    iget-object v2, v2, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->getLauncherPacakges(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockAppListLoader$LoadingTask$Cgc0Lu1mEVTJuAhrwRQRZ5d_pHI;

    invoke-direct {v3, p0}, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockAppListLoader$LoadingTask$Cgc0Lu1mEVTJuAhrwRQRZ5d_pHI;-><init>(Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;)V

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    new-instance v7, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;

    invoke-direct {v7, v6}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    iget-object v8, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v10, v7, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->userId:I

    invoke-virtual {v8, v9, v10}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    move-object v9, v8

    goto :goto_1

    :cond_0
    const-string v9, ""

    :goto_1
    iput-object v9, v7, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;->title:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    iget-object v9, v9, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    iget-object v5, v5, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    iget-object v6, v6, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->COMPARATOR_ALPHABETICAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "mAppInfoList - size=%d, time=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    iget-object v9, v9, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    sub-long v9, v5, v0

    long-to-int v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Lcom/android/systemui/sidescreen/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    iget-object v4, v4, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sidescreen/appdock/model/AppDockAppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    sget-object v1, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$State;->LOAD_COMPLETE:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$State;

    invoke-static {v0, v1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->access$000(Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$State;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    iget-object v0, v0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    iget-object v0, v0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;

    invoke-interface {v1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;->onPostExecute()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    iget-object v0, v0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    sget-object v1, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$State;->LOADING:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$State;

    invoke-static {v0, v1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->access$000(Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$State;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    iget-object v0, v0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->this$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    iget-object v0, v0, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;

    invoke-interface {v1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;->onPreExecute()V

    goto :goto_0

    :cond_0
    return-void
.end method

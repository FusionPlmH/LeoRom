.class public Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;
.super Landroid/support/v7/widget/RecyclerView;
.source "AppDockItemListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;
    }
.end annotation


# instance fields
.field mAdapterObj:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListViewAdapter;

.field mAppContext:Landroid/content/Context;

.field mLayoutManager:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;

.field mLayoutState:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mList:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->LIST:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mLayoutState:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->init()V

    return-void
.end method

.method private disableVisibleTasks()V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    nop

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/sidescreen/appdock/AppDockSystemProxy;->getVisibleTasks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    nop

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->getMainActivityInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v6, v8}, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->makeKeyFromPackage(Landroid/content/pm/ResolveInfo;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    const/4 v7, 0x0

    invoke-virtual {v5}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->isSupportMultiInstance()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v5, v7}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->setDisabled(Z)V

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v7, "load time=%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    sub-long v9, v4, v0

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Lcom/android/systemui/sidescreen/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mAppContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;-><init>(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mLayoutManager:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mLayoutManager:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListViewAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListViewAdapter;-><init>(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mAdapterObj:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListViewAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mAdapterObj:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    sget-object v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->LIST:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->setLayoutState(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->stopScroll()V

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getCurrentLayoutState()Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mLayoutState:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    return-object v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getLayoutManager()Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutManager()Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;

    return-object v0
.end method

.method public setLayoutState(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mLayoutState:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    sget-object v0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$1;->$SwitchMap$com$android$systemui$sidescreen$appdock$view$AppDockItemListView$LayoutState:[I

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mLayoutState:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;

    invoke-virtual {v1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView$LayoutState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getLayoutManager()Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;->setSpanCount(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getLayoutManager()Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListLayoutManager;->setSpanCount(I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unbind()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->clearIconCache()V

    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->getAppInfosExceptRecentsList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->disableVisibleTasks()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListView;->mAdapterObj:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListViewAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

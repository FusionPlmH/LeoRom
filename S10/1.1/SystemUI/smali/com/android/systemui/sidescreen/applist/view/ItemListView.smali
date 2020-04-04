.class public Lcom/android/systemui/sidescreen/applist/view/ItemListView;
.super Landroid/support/v7/widget/RecyclerView;
.source "ItemListView.java"


# instance fields
.field mAdapterObj:Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;

.field mAppContext:Landroid/content/Context;

.field mLayoutManager:Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sidescreen/applist/model/ItemInfo;",
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

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mAppContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;-><init>(Lcom/android/systemui/sidescreen/applist/view/ItemListView;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mLayoutManager:Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mLayoutManager:Lcom/android/systemui/sidescreen/applist/view/ItemListLayoutManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;-><init>(Lcom/android/systemui/sidescreen/applist/view/ItemListView;)V

    iput-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mAdapterObj:Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mAdapterObj:Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->stopScroll()V

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sidescreen/applist/model/ItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public unbind()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->clearIconCache()V

    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/sidescreen/applist/model/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader;->getAppInfosExceptRecentsList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->mAdapterObj:Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/applist/view/ItemListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

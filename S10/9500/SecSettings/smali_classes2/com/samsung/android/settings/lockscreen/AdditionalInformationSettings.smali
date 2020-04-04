.class public Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdditionalInformationSettings.java"

# interfaces
.implements Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnStartDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mFaceWidgetItemTouchHelperCallback:Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback;

.field private mIsLockScreenDisabled:Z

.field private mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMenu:Landroid/view/Menu;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRecyclerViewParent:Landroid/view/View;

.field private mReorderMode:Z

.field private mRootView:Landroid/view/View;

.field private mSeslHeaderRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

.field private mSeslListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

.field private mSeslSubheaderRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Landroid/support/v7/util/SeslSubheaderRoundedCorner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSeslHeaderRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Landroid/support/v7/util/SeslSubheaderRoundedCorner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSeslSubheaderRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Landroid/support/v7/util/SeslRoundedCorner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSeslListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    return-object v0
.end method

.method private setReorderMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->setReorderMode(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->updateViewConfiguration()V

    return-void
.end method

.method private updateViewConfiguration()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method private updateVisibilityOfRemoveMenu()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    xor-int/2addr v1, v2

    nop

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f12095e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1200be

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1eab

    return v0
.end method

.method public onBackKey()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setReorderMode(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mIsLockScreenDisabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mIsLockScreenDisabled:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    new-instance v4, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-direct {v4, v5, p0, v2, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$OnStartDragListener;ZZ)V

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    nop

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f12095e

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mMenu:Landroid/view/Menu;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d0189

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerViewParent:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerViewParent:Landroid/view/View;

    const v3, 0x7f0a02e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->setAllowDividerAfterLastItem(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->hasFooter()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$FaceWidgetDividerItemDecorator;->setFooterCount(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v4, Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSeslHeaderRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSeslHeaderRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->setRoundedCorners(I)V

    new-instance v4, Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSeslSubheaderRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSeslSubheaderRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->setRoundedCorners(I)V

    new-instance v4, Landroid/support/v7/util/SeslRoundedCorner;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSeslListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mSeslListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    invoke-virtual {v4, v5}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;-><init>(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v4}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    new-instance v3, Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->hasFooter()Z

    move-result v6

    invoke-direct {v3, v4, v6}, Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback$OnItemMoveListener;Z)V

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mFaceWidgetItemTouchHelperCallback:Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback;

    new-instance v3, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mFaceWidgetItemTouchHelperCallback:Lcom/samsung/android/settings/lockscreen/FaceWidgetItemTouchHelperCallback;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerViewParent:Landroid/view/View;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mRecyclerViewParent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0601b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    const v3, 0x7f1200be

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter;->onFinish()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const v2, 0x102002c

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setReorderMode(Z)V

    return v1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setReorderMode(Z)V

    :cond_3
    return v1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "AdditionalInformationSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->unregisterContentObserver()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->registerContentObserver()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "reorderMode"

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStartDrag(Lcom/samsung/android/settings/lockscreen/FaceWidgetRecyclerAdapter$RecyclerViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "reorderMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setReorderMode(Z)V

    return-void
.end method

.method public registerContentObserver()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterContentObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

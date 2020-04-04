.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;
.super Landroid/app/Activity;
.source "PackageListActivity.java"


# instance fields
.field private GRID_VIEW:I

.field private LIST_VIEW:I

.field private layoutType:I

.field private mAppOnlySwitch:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;

.field private mContext:Landroid/content/Context;

.field private mDisableHunSwitch:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;

.field private mFullScrollView:Landroid/widget/ScrollView;

.field private mIsNightMode:Z

.field private mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

.field mPackageCardAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;

.field mPackageListAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

.field private mPermissionUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PermissionUtil;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRoundedColor:I

.field private mScrollWrapper:Landroid/widget/LinearLayout;

.field mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->layoutType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->GRID_VIEW:I

    iput v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->LIST_VIEW:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkNightMode()V
    .locals 3

    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mIsNightMode:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mIsNightMode:Z

    :goto_0
    return-void
.end method

.method private initGridView()V
    .locals 3

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0a02ef

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$1;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-direct {v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemsProvider;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPackageCardAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPackageCardAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPackageCardAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;

    new-instance v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageListActivity$smfl7jjSkPbAmi2cEqr0WZBW2l4;

    invoke-direct {v2, p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageListActivity$smfl7jjSkPbAmi2cEqr0WZBW2l4;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)V

    iput-object v2, v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;->onItemClickListener:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$OnItemClickListener;

    const v1, 0x7f0a03c4

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mProgress:Landroid/widget/ProgressBar;

    return-void
.end method

.method private initListView()V
    .locals 3

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const v1, 0x7f0a02ef

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-direct {v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemsProvider;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPackageListAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPackageListAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPackageListAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

    new-instance v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageListActivity$k1Kz5r8b1u0PO-O_fOa0FLyjT8o;

    invoke-direct {v2, p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/-$$Lambda$PackageListActivity$k1Kz5r8b1u0PO-O_fOa0FLyjT8o;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)V

    iput-object v2, v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;->onItemClickListener:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$OnItemClickListener;

    const v1, 0x7f0a03c4

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mProgress:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static synthetic lambda$initGridView$0(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->togglePackageState(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;)V

    return-void
.end method

.method public static synthetic lambda$initListView$1(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->togglePackageState(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModel;)V

    return-void
.end method

.method private removeSuggestedAppUI()V
    .locals 2

    const v0, 0x7f0a0175

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateFullScreenLayout()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v1, "PackageListActivity"

    const-string v2, "updateFullScreenLayout"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0a03c3

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a03c1

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a03c2

    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/RoundedCornerLinearLayout;

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v4, v5

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v7, "PackageListActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateFullScreenLayout content_1.getMeasuredHeight() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v7, "PackageListActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateFullScreenLayout parent.getMeasuredHeight() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v7, "PackageListActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateFullScreenLayout isOverSize : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v7, "PackageListActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateFullScreenLayout fullScroll : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mFullScrollView:Landroid/widget/ScrollView;

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v7, "PackageListActivity"

    const-string v8, "updateFullScreenLayout change screen layout to scroll view"

    invoke-virtual {v6, v7, v8, v5}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mFullScrollView:Landroid/widget/ScrollView;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mScrollWrapper:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mScrollWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mScrollWrapper:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mScrollWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mScrollWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mFullScrollView:Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mScrollWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mFullScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_3
    if-nez v4, :cond_4

    iget-object v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mFullScrollView:Landroid/widget/ScrollView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v7, "PackageListActivity"

    const-string v8, "updateFullScreenLayout remove scroll view"

    invoke-virtual {v6, v7, v8, v5}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mFullScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mFullScrollView:Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mScrollWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mScrollWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mScrollWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mFullScrollView:Landroid/widget/ScrollView;

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public getRoundedColor()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRoundedColor:I

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v1, "PackageListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRoundedColor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRoundedColor:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initCustomSwitchView()V
    .locals 5

    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a016b

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0067

    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;

    iput-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mAppOnlySwitch:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;

    const v2, 0x7f0a016a

    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;

    iput-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mDisableHunSwitch:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;

    sget-boolean v2, Lcom/samsung/android/systemui/smartpopupview/Rune;->ENABLE_FULLSCREEN_LAUNCHING:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mAppOnlySwitch:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;

    new-instance v4, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$2;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->setOnCheckedChangeListener(Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mAppOnlySwitch:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;

    iget-object v4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->isActivateOnlyWhenUsingAppsEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mAppOnlySwitch:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->setVisibility(I)V

    :goto_0
    sget-boolean v2, Lcom/samsung/android/systemui/smartpopupview/Rune;->ALWAYS_DISABLE_HUN:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mDisableHunSwitch:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;

    new-instance v3, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity$3;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->setOnCheckedChangeListener(Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mDisableHunSwitch:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;

    iget-object v3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/state/FloatingNotificationStateManager;->isHeadUpNotificationDisabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->setChecked(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mDisableHunSwitch:Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/systemui/smartpopupview/CustomSwitchView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public initViews()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/systemui/smartpopupview/Rune;->ENABLE_APP_SUGGESTION:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->removeSuggestedAppUI()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mIsNightMode:Z

    if-nez v0, :cond_1

    const v0, 0x7f0a03c1

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRoundedColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const v1, 0x7f0a0173

    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRoundedColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d002b

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModelFactory;

    invoke-direct {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModelFactory;-><init>()V

    new-instance v2, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;

    invoke-direct {v2, p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageItemViewModelFactory;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PackageUtil;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-virtual {v0, p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->setView(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)V

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    invoke-direct {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    new-instance v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PermissionUtil;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    invoke-direct {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PermissionUtil;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPermissionUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PermissionUtil;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->getRoundedColor()V

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->checkNightMode()V

    iget v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->layoutType:I

    iget v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->GRID_VIEW:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->initGridView()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->layoutType:I

    iget v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->LIST_VIEW:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->initListView()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->initViews()V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->initCustomSwitchView()V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->setCornerRound()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->start()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->enableEdgeLighting()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->generateList()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->onActivityDestroyed()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->setView(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    iput-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPermissionUtil:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/PermissionUtil;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public setCornerRound()V
    .locals 3

    const v0, 0x7f0a03c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/RoundedCornerLinearLayout;

    iget-boolean v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mIsNightMode:Z

    const/16 v2, 0xf

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRoundedColor:I

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/RoundedCornerLinearLayout;->setRoundedCornerColor(II)V

    :cond_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/widget/RoundedCornerLinearLayout;->setRoundedCorners(I)V

    return-void
.end method

.method public setProgressOn(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateListVIew()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->layoutType:I

    iget v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->GRID_VIEW:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPackageCardAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->layoutType:I

    iget v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->LIST_VIEW:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPackageListAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/samsung/android/systemui/smartpopupview/Rune;->ENABLE_APP_SUGGESTION:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Suggest app not exist"

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mViewModel:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;

    invoke-virtual {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/viewmodel/PackageListActivityViewModel;->getLastSuggestPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->removeSuggestedAppUI()V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->updateFullScreenLayout()V

    return-void
.end method

.method public updateListVIewWhenDestroy()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->layoutType:I

    iget v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->GRID_VIEW:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPackageCardAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPackageCardAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter;->destroy()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->layoutType:I

    iget v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->LIST_VIEW:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPackageListAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPackageListAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;->destroy()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPackageListAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

    iput-object v2, v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;->onItemClickListener:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageCardAdapter$OnItemClickListener;

    iput-object v2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListActivity;->mPackageListAdapter:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/view/PackageListAdapter;

    :cond_1
    :goto_0
    return-void
.end method

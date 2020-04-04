.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "DashboardSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;
.implements Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardSummary$RoundedDecoration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/core/InstrumentedFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;",
        "Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoryListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private final mHandler:Landroid/os/Handler;

.field mIsOnCategoriesChangedCalled:Z

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

.field private mProfileContentObserver:Landroid/database/ContentObserver;

.field private mSeslRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

.field private mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

.field private mStagingSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

.field private mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private mSupportProfileImage:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSupportProfileImage:Z

    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mProfileContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardSummary$2;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/support/v7/util/SeslRoundedCorner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSeslRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/support/v7/util/SeslRoundedCorner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    return-object v0
.end method

.method public static synthetic lambda$onCreateOptionsMenu$0(Lcom/android/settings/dashboard/DashboardSummary;Landroid/view/MenuItem;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->getProfileImageIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x251c

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$rebuildUI$1(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->updateCategory()V

    return-void
.end method

.method public static synthetic lambda$updateCategory$2(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    return-void
.end method

.method public static synthetic lambda$updateCategory$3(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingSuggestions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setSuggestions(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    return-void
.end method

.method public static synthetic lambda$updateCategory$4(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->updateSummaryToCache(Lcom/android/settingslib/drawer/DashboardCategory;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    return-void
.end method


# virtual methods
.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    const-string v0, "DashboardSummary#onAttach"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    const-string v0, "DashboardSummary"

    const-string v1, "Creating SuggestionControllerMixin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->isSuggestionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSuggestionServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v1, p1, p0, v2, v3}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;-><init>(Landroid/content/Context;Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/content/ComponentName;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCategoriesChanged()V
    .locals 1

    const-string v0, "DashboardSummary#onCategoriesChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "DashboardSummary#onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "DashboardSummary"

    const-string v3, "Starting DashboardSummary"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    new-instance v3, Lcom/android/settings/dashboard/SummaryLoader;

    const-string v4, "com.android.settings.category.ia.homepage"

    invoke-direct {v3, v2, v4}, Lcom/android/settings/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    if-eqz p1, :cond_0

    const-string v3, "categories_change_called"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->isProfileImageAvailable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSupportProfileImage:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSupportProfileImage:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const-string v0, "DashboardSummary#onCreateOptionsMenu"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSupportProfileImage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const v1, 0x7f1215bc

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->getProfileImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    new-instance v1, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$JXJQBL-ddAklUXDQpwf7GWSCb6M;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$JXJQBL-ddAklUXDQpwf7GWSCb6M;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const-string v0, "DashboardSummary#onCreateView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const v3, 0x7f0d0056

    invoke-virtual {p1, v3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a01f2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    if-eqz p3, :cond_0

    const-string v4, "scroll_position"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    :cond_0
    new-instance v4, Landroid/support/v7/util/SeslRoundedCorner;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSeslRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    new-instance v4, Landroid/support/v7/util/SeslRoundedCorner;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0601b1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mListRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCorners(I)V

    new-instance v2, Lcom/android/settings/dashboard/DashboardSummary$RoundedDecoration;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/settings/dashboard/DashboardSummary$RoundedDecoration;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$1;)V

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v6, v2}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v6, v7}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v6, v5}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setHasFixedSize(Z)V

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v6, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    new-instance v4, Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v8

    invoke-direct {v4, v6, p3, v7, v8}, Lcom/android/settings/dashboard/DashboardAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v4, v6}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v4, v5}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v4, v6}, Lcom/android/settings/dashboard/SummaryLoader;->setSummaryConsumer(Lcom/android/settings/dashboard/SummaryLoader$SummaryConsumer;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    iget-boolean v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSupportProfileImage:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/settings/dashboard/DashboardSummary;->setHasOptionsMenu(Z)V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v3
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSupportProfileImage:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardSummary;->onLoadFinished(Landroid/content/Loader;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->remCategoryListener(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoryListener;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const-string v0, "DashboardSummary#onPrepareOptionsMenu"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSupportProfileImage:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/dashboard/SecProfileImageLoader;->getProfileImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v0, "DashboardSummary#onResume"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->addCategoryListener(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoryListener;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "categories_change_called"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mIsOnCategoriesChangedCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "scroll_position"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 5

    const-string v0, "DashboardSummary#onStart"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStart()V

    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSupportProfileImage:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mProfileContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStop()V

    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSupportProfileImage:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mProfileContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onSuggestionReady(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DashboardSummary#updateCategory"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingSuggestions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->setSuggestions(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    if-eqz v0, :cond_0

    const-string v0, "DashboardSummary"

    const-string v1, "Category has loaded, setting category from suggestionReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->updateSummaryToCache(Lcom/android/settingslib/drawer/DashboardCategory;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategory(Lcom/android/settingslib/drawer/DashboardCategory;)V

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method rebuildUI()V
    .locals 1

    const-string v0, "DashboardSummary#rebuildUI"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$uShUp03FtpojRokkywd2N1qGW_k;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$uShUp03FtpojRokkywd2N1qGW_k;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method updateCategory()V
    .locals 5

    const-string v0, "DashboardSummary#updateCategory"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    const-string v1, "com.android.settings.category.ia.homepage"

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/SummaryLoader;->updateSummaryToCache(Lcom/android/settingslib/drawer/DashboardCategory;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mStagingCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$S4ZnJYAtpWnSKH5Ya-6PeP-43T4;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$S4ZnJYAtpWnSKH5Ya-6PeP-43T4;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionControllerMixin:Lcom/android/settingslib/suggestions/SuggestionControllerMixin;

    invoke-virtual {v1}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->isSuggestionLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DashboardSummary"

    const-string v2, "Suggestion has loaded, setting suggestion/category"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$kCUZowpTTsEozF-ygTzgGisYUiM;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$kCUZowpTTsEozF-ygTzgGisYUiM;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string v1, "DashboardSummary"

    const-string v2, "Suggestion NOT loaded, delaying setCategory by 3000ms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$_vJSQ4JiQV1-72BBEMy_dNfqxE4;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardSummary$_vJSQ4JiQV1-72BBEMy_dNfqxE4;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

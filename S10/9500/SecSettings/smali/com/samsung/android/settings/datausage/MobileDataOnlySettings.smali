.class public Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MobileDataOnlySettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;,
        Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$HeaderViewHolder;,
        Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;,
        Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$AlphaComparator;
    }
.end annotation


# static fields
.field private static sFilterLabels:[I


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private final mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

.field private mEmptyView:Landroid/view/View;

.field private mFilterSpinner:Landroid/support/v7/widget/AppCompatSpinner;

.field private mHandler:Landroid/os/Handler;

.field private mLoadingContainer:Landroid/view/View;

.field private mMDOAdapter:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRootView:Landroid/view/View;

.field private mSelectedFilter:I

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUrspManager:Landroid/net/UrspManager;

.field private mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mWaitLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->sFilterLabels:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1213d5
        0x7f1213d6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSelectedFilter:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mWaitLoading:Z

    new-instance v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$1;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$2;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$3;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    new-instance v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$4;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSelectedFilter:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->loadAppList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/support/v7/widget/AppCompatSpinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mFilterSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/widget/ArrayAdapter;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getSpinnerAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/net/UrspManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mUrspManager:Landroid/net/UrspManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mMDOAdapter:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private getSpinnerAdapter()Landroid/widget/ArrayAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    const v2, 0x1090008

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0357

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->sFilterLabels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->sFilterLabels:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    const v2, 0x7f120a90

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method private loadAppList()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mWaitLoading:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mWaitLoading:Z

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v3, v2}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x2710

    if-ge v3, v5, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSelectedFilter:I

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mUrspManager:Landroid/net/UrspManager;

    iget-object v5, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v1, v5}, Landroid/net/UrspManager;->isUrspRuleEnabled(II)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSelectedFilter:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    nop

    :cond_6
    :goto_1
    add-int/2addr v0, v4

    goto :goto_0

    :cond_7
    new-instance v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$AlphaComparator;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$AlphaComparator;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$6;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1be9

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "urspservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UrspManager;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mUrspManager:Landroid/net/UrspManager;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "isFromGame"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSelectedFilter:I

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f1211ac

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->loadAppList()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mUrspManager:Landroid/net/UrspManager;

    invoke-virtual {v2, v1}, Landroid/net/UrspManager;->getUrspMode(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_0
    const v0, 0x7f0d01e5

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0480

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    const v3, 0x7f0a02ab

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    const v3, 0x7f0a02f8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatSpinner;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mFilterSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mFilterSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getSpinnerAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mFilterSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    const v3, 0x7f0a02f9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    const v5, 0x7f0a02a6

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Landroid/widget/TextView;->semSetRoundedCornerColor(II)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    const v6, 0x7f0a00a0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mApps:Ljava/util/List;

    invoke-direct {v1, p0, v5}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mMDOAdapter:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mMDOAdapter:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mMDOAdapter:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/RecyclerView;->semSetRoundedCornerColor(II)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mWaitLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mWaitLoading:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->loadAppList()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mUrspManager:Landroid/net/UrspManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/UrspManager;->clearUrspBlackListUidRule(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->loadAppList()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getMetricsCategory()I

    move-result v1

    const/16 v2, 0x1bee

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mUrspManager:Landroid/net/UrspManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/UrspManager;->getUrspMode(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mWaitLoading:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->loadAppList()V

    :cond_1
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mUrspManager:Landroid/net/UrspManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/UrspManager;->getUrspMode(I)Z

    move-result v0

    if-eq v0, p2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mptcp_value"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "smart_bonding"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz p2, :cond_3

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->makeMDODisablePopup(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$5;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mUrspManager:Landroid/net/UrspManager;

    invoke-virtual {v3, v1, p2}, Landroid/net/UrspManager;->setUrspMode(IZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mMDOAdapter:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mMDOAdapter:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1bea

    if-eqz p2, :cond_5

    const-wide/16 v2, 0x1

    goto :goto_2

    :cond_5
    const-wide/16 v2, 0x0

    :goto_2
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method public setSelectedFilter(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->mSelectedFilter:I

    return-void
.end method

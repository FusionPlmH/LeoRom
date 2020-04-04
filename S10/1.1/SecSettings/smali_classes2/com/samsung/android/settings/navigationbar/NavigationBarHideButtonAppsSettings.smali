.class public Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NavigationBarHideButtonAppsSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$Row;
    }
.end annotation


# static fields
.field private static mFragmentVisible:Z

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mExcludePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHideButtonApps:Landroid/support/v7/preference/PreferenceCategory;

.field private mHideButtonAppsDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mIsPartialLoading:Z

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mNavigationBarHideButtonObserver:Landroid/database/ContentObserver;

.field private mProgress:Landroid/app/ProgressDialog;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field private mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mFragmentVisible:Z

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mRows:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mIsPartialLoading:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mExcludePackages:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mNavigationBarHideButtonObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mCollectAppsRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private declared-synchronized IsFragmentVisible()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mIsPartialLoading:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mIsPartialLoading:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mExcludePackages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->IsFragmentVisible()Z

    move-result v0

    return v0
.end method

.method private loadAppsList()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private makeExcludePackageList()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mExcludePackages:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mExcludePackages:Ljava/util/List;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07056f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private refreshDisplayedItems()V
    .locals 8

    const-string v0, "ShowHideButtonAppsSettings"

    const-string v1, "Refreshing apps..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHideButtonApps:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    const-string v2, "ShowHideButtonAppsSettings"

    const-string v4, "mSortedRows size is 0"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;

    new-instance v5, Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;-><init>(Landroid/content/Context;)V

    iget-object v6, v4, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v6, v4, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget v6, v4, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPolicy:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_1
    iget v6, v4, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPolicy:I

    if-nez v6, :cond_2

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_1
    new-instance v6, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$4;

    invoke-direct {v6, p0, v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$4;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;)V

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHideButtonApps:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "ShowHideButtonAppsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " displayed items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized setFragmentVisibleState(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d2e

    return v0
.end method

.method public getNaviBarHidePackageInfo(Ljava/lang/String;I)I
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/view/SemWindowManager;->getNaviBarHidePolicy(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ShowHideButtonAppsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNaviBarHidePackageInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Landroid/app/Activity;)Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;
    .locals 5

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;

    invoke-direct {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;-><init>()V

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mUid:I

    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ShowHideButtonAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mUid:I

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getNaviBarHidePackageInfo(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;->mPolicy:I

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "ShowHideButtonAppsSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const v0, 0x7f1500de

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120edf

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    const-string v0, "hide_button_apps"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHideButtonApps:Landroid/support/v7/preference/PreferenceCategory;

    const-string v0, "hide_button_apps_desc"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHideButtonAppsDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f130135

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->makeExcludePackageList()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    const-string v0, "ShowHideButtonAppsSettings"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mNavigationBarHideButtonObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->setFragmentVisibleState(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "ShowHideButtonAppsSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_hide_bar"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigationbar_hide_bar"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mNavigationBarHideButtonObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->setFragmentVisibleState(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mIsPartialLoading:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f130376

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06019b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070558

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070559

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const v6, 0x7f120ee1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    new-instance v6, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v6}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->showAppList(Z)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    const-string v0, "ShowHideButtonAppsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_hide_bar"

    nop

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->showAppList(Z)V

    return-void
.end method

.method public setNaviBarHidePackage(Ljava/lang/String;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    if-eqz v0, :cond_0

    const-string v0, "ShowHideButtonAppsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNaviBarHidePackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / disable-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/view/SemWindowManager;->setNaviBarHidePolicy(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public showAppList(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHideButtonAppsDesc:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->mHideButtonApps:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->loadAppsList()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :goto_0
    return-void
.end method

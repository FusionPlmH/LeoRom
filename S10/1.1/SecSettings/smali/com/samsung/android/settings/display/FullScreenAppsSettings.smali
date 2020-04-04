.class public Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FullScreenAppsSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$FullSwitchOnPreferenceChangeListener;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$Row;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mFragmentVisible:Z

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mEmptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private mFullScreenApps:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mFullScreenAppsSettingsHandler:Landroid/os/Handler;

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field private mIsListVisible:Z

.field private mIsPartialLoading:Z

.field private mIsShowAppsTypeAll:Z

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mProgress:Landroid/app/ProgressDialog;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field private mShowAppsType:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

.field private mSortByAppType:Z

.field private mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFragmentVisible:Z

    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRowComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRows:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsListVisible:Z

    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenAppsSettingsHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mCollectAppsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private declared-synchronized IsFragmentVisible()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mShowAppsType:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsShowAppsTypeAll:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->refreshDisplayedItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->IsFragmentVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/support/v7/preference/SecPreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenApps:Landroid/support/v7/preference/SecPreferenceCategory;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setMaxAspectPackage(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsPartialLoading:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsPartialLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->loadAppsList()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortByAppType:Z

    return v0
.end method

.method static synthetic access$900()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method private changeListVisible(Z)V
    .locals 3

    const-string v0, "FullScreenAppsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeListVisible listVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsListVisible:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const v1, 0x7f120a85

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenApps:Landroid/support/v7/preference/SecPreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceCategory;->setVisible(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->loadAppsList()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const v1, 0x7f120a77

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenApps:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenApps:Landroid/support/v7/preference/SecPreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceCategory;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private getConfigMaxAspectPackage(Ljava/lang/String;I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/view/SemWindowManager;->isMaxAspectPackageEx(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "FullScreenAppsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMaxAspectPackageEx() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getPackageType(Ljava/lang/String;ILandroid/app/Activity;)I
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getConfigMaxAspectPackage(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const-string v3, "FullScreenAppsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageType() case-T #0 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    const-string v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageType() case-A #1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->isGameApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, "FullScreenAppsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageType() case-G #2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const/4 v3, 0x5

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-interface {v5, p1, v2, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    if-eqz v0, :cond_4

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_3

    const-string v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "targetSdkVersion() case-T #3 : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    const-string v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "targetSdkVersion() case-F #4 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    return v2

    :cond_4
    const-string v2, "FullScreenAppsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageType() #5 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_0
    move-exception v2

    const-string v4, "FullScreenAppsSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isResizeableActivity() RemoteException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private getPackageTypeForCutout(Ljava/lang/String;ILandroid/app/Activity;)I
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getConfigMaxAspectPackage(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v4, "FullScreenAppsSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPackageType() error case. need check wm #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v4, 0x5

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v5, p1, v7, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    nop

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_3

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v5

    :goto_1
    if-eqz v6, :cond_4

    const-string v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageType() #0 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_4
    const/4 v6, 0x3

    if-ne v1, v6, :cond_5

    const-string v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageType() case-A #1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->isGameApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v2, "FullScreenAppsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageType() case-G #2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    if-eqz v0, :cond_8

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_7

    const-string v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "targetSdkVersion() case-T #3 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_7
    const-string v3, "FullScreenAppsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "targetSdkVersion() case-F #4 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    const-string v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageType() #5 : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_0
    move-exception v2

    const-string v3, "FullScreenAppsSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isResizeableActivity() RemoteException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private initSorting()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortByAppType:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortByAppType:Z

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsPartialLoading:Z

    return-void
.end method

.method private isGameApp(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v0, :cond_0

    const-string v0, "gamemanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMaxAspectPackage(Ljava/lang/String;I)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getConfigMaxAspectPackage(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private launchAdvancedSetting()V
    .locals 2

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/display/FullScreenAppHideCameraSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f120a78

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private loadAppsList()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsListVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/IconResizer;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07056f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private refreshDisplayedItems(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    const-string v0, "FullScreenAppsSettings"

    const-string v1, "Refreshing apps..."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->supportDisplayCutOut(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    new-array v3, v4, [Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f120a7c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f120a7d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    move-object v2, v3

    :cond_0
    move v3, v6

    :goto_0
    if-ge v3, v1, :cond_d

    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    const-string v4, "FullScreenAppsSettings"

    const-string v5, "mSortedRows size is 0"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object p1

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    iget-object v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/settings/Rune;->supportDisplayCutOut(Landroid/content/Context;)Z

    move-result v8

    const v9, 0x7f120a7b

    const/4 v10, 0x3

    if-eqz v8, :cond_6

    iget v8, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-eqz v8, :cond_4

    iget v8, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-eq v8, v10, :cond_4

    iget v8, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-eq v8, v4, :cond_4

    iget v8, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    const/4 v10, 0x4

    if-eq v8, v10, :cond_4

    iget v8, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    const/4 v10, 0x5

    if-ne v8, v10, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v8, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsShowAppsTypeAll:Z

    if-nez v8, :cond_3

    goto/16 :goto_5

    :cond_3
    new-instance v8, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-direct {v8, v10}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;-><init>(Landroid/content/Context;)V

    iget-object v10, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v10, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v6}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setSwitchVisible(Z)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setSummary(I)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_4
    :goto_1
    new-instance v8, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->clearItems()V

    invoke-virtual {v8, v2}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->addItems([Ljava/lang/String;)V

    iget-object v9, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {v8, v9, v7}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->setAppRow(Landroid/view/IWindowManager;Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;)V

    iget-object v9, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget v10, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    invoke-direct {p0, v9, v10}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->isMaxAspectPackage(Ljava/lang/String;I)Z

    move-result v9

    if-ne v9, v5, :cond_5

    move v9, v5

    goto :goto_2

    :cond_5
    move v9, v6

    :goto_2
    invoke-virtual {v8, v9, v6}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->setSelectedItem(IZ)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_6
    new-instance v8, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-direct {v8, v11}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/samsung/android/settings/display/FullScreenAppsSettings$FullSwitchOnPreferenceChangeListener;

    invoke-direct {v11, p0, v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$FullSwitchOnPreferenceChangeListener;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;)V

    invoke-virtual {v8, v11}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setListner(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v12, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8, v12}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v12, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v12}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v12, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setKey(Ljava/lang/String;)V

    iget v12, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-eqz v12, :cond_a

    iget v12, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-ne v12, v10, :cond_7

    goto :goto_3

    :cond_7
    iget v10, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-ne v10, v5, :cond_9

    iget-boolean v10, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsShowAppsTypeAll:Z

    if-nez v10, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v8, v6}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setSwitchVisible(Z)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setSummary(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {v8, v5}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setSwitchVisible(Z)V

    const v9, 0x7f120a7e

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setSummary(I)V

    invoke-virtual {v8, v11}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget v10, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    invoke-direct {p0, v9, v10}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->isMaxAspectPackage(Ljava/lang/String;I)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setChecked(Z)V

    goto :goto_4

    :cond_a
    :goto_3
    iget-object v9, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/Rune;->supportDisplayCutOut(Landroid/content/Context;)Z

    move-result v9

    const v10, 0x7f120a7f

    if-eqz v9, :cond_b

    invoke-virtual {v8, v5}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setSwitchVisible(Z)V

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setSummary(I)V

    invoke-virtual {v8, v11}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget v10, v7, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    invoke-direct {p0, v9, v10}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->isMaxAspectPackage(Ljava/lang/String;I)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setChecked(Z)V

    goto :goto_4

    :cond_b
    iget-boolean v9, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsShowAppsTypeAll:Z

    if-nez v9, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v8, v6}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setSwitchVisible(Z)V

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setSummary(I)V

    :goto_4
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "FullScreenAppsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " displayed items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

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
    sput-boolean p1, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setLastOutlineStrokeEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setMaxAspectPackage(Ljava/lang/String;IZ)V
    .locals 3

    const-string v0, "FullScreenAppsSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxAspectPackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/view/IWindowManager;->setMaxAspectPackage(Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FullScreenAppsSettings"

    const-string/jumbo v2, "setMaxAspectPackage() RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setSorting(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortByAppType:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsPartialLoading:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->loadAppsList()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Landroid/app/Activity;)Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;
    .locals 5

    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;-><init>()V

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Lcom/samsung/android/settings/Rune;->supportDisplayCutOut(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    invoke-direct {p0, v1, v2, p4}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getPackageTypeForCutout(Ljava/lang/String;ILandroid/app/Activity;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    invoke-direct {p0, v1, v2, p4}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getPackageType(Ljava/lang/String;ILandroid/app/Activity;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    :goto_1
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->initSorting()V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const v0, 0x7f1500c7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120a86

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f130135

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    new-instance v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string v3, "empty_category"

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setOrder(I)V

    const-string v0, "full_screen_apps"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenApps:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v0, "show_apps_type"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mShowAppsType:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mShowAppsType:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mShowAppsType:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenAppsSettingsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->setHandler(Landroid/os/Handler;)V

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsShowAppsTypeAll:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setAutoRemoveInsetCategory(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f120a83

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x2

    const v2, 0x7f120a82

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x3

    const v2, 0x7f120a78

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->launchAdvancedSetting()V

    return v2

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setSorting(Z)V

    return v2

    :pswitch_2
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setSorting(Z)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setFragmentVisibleState(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortByAppType:Z

    if-eqz v0, :cond_2

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->finish()V

    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportDisplayCutOut(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "display_cutout_hide_notch"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setLastOutlineStrokeEnabled(Z)V

    if-nez v0, :cond_4

    move v3, v1

    nop

    :cond_4
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->changeListVisible(Z)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->loadAppsList()V

    :goto_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setFragmentVisibleState(Z)V

    return-void
.end method

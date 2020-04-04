.class public Lcom/android/settings/datausage/UnrestrictedDataAccess;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;,
        Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;
    }
.end annotation


# static fields
.field private static sMore:I

.field private static sMoreShowAll:I

.field private static sMoreShowAllowedAppsFirst:I


# instance fields
.field private final ALLOW_UNRESTRICTED_DATA_USAGE:I

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

.field private mExtraLoaded:Z

.field private mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private mOnGenericMotionListener:Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mShowSortSelected:Z

.field private mShowSystem:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/16 v0, 0x1bbe

    iput v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->ALLOW_UNRESTRICTED_DATA_USAGE:I

    new-instance v0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Lcom/android/settings/datausage/UnrestrictedDataAccess$1;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mOnGenericMotionListener:Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/datausage/UnrestrictedDataAccess;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/DataSaverBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mOnGenericMotionListener:Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;

    return-object v0
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/IconResizer;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070585

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method private rebuild()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onRebuildComplete(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120b5d

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1bbe

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150139

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    const/16 v0, 0x30d

    goto :goto_0

    :cond_0
    const/16 v0, 0x30e

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setAnimationAllowed(Z)V

    nop

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    new-instance v1, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    new-instance v1, Lcom/android/settings/datausage/AppStateDataUsageBridge;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/settings/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v2, "show_system"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz p1, :cond_1

    const-string/jumbo v2, "show_sorted"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_1
    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    nop

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120e7e

    goto :goto_0

    :cond_0
    const v0, 0x7f120e89

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x2b

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x2c

    const v2, 0x7f120e88

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->release()V

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->rebuild()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->sMore:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getMetricsCategory()I

    move-result v0

    sget v1, Lcom/android/settings/datausage/UnrestrictedDataAccess;->sMore:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1218fc

    goto :goto_0

    :cond_0
    const v0, 0x7f120e88

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->rebuild()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->sMoreShowAllowedAppsFirst:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getMetricsCategory()I

    move-result v0

    sget v1, Lcom/android/settings/datausage/UnrestrictedDataAccess;->sMoreShowAllowedAppsFirst:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_3

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_2

    const v0, 0x7f120e7e

    goto :goto_1

    :cond_2
    const v0, 0x7f120e89

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_2
    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->rebuild()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->sMoreShowAll:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getMetricsCategory()I

    move-result v0

    sget v1, Lcom/android/settings/datausage/UnrestrictedDataAccess;->sMoreShowAll:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    nop

    :goto_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->pause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    if-ne p2, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    int-to-long v5, v3

    invoke-static {v0, v2, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    move-object v0, p1

    check-cast v0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v2, :cond_1

    move v1, v4

    nop

    :cond_1
    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->access$100(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->logSpecialPermissionChange(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->access$100(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->access$100(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v1}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->access$200(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->access$200(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object v2

    iput-boolean v1, v2, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    :cond_2
    return v4

    :cond_3
    return v1
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_7

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->shouldAddPreference(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v6, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    if-eq v6, v7, :cond_3

    goto/16 :goto_2

    :cond_2
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    if-nez v8, :cond_4

    new-instance v9, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, p0, v10, v5}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    move-object v8, v9

    invoke-virtual {v8, v7}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {v8}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    :goto_1
    iget-boolean v9, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v8, v4}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOrder(I)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    iget-boolean v4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_8

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v5}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOrder(I)V

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_3

    :cond_8
    move v4, v3

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_9

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v5}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOrder(I)V

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_4

    :cond_9
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setLoading(ZZ)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->resume()V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "show_system"

    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "show_sorted"

    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setLoading(ZZ)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    :cond_0
    return-void
.end method

.method shouldAddPreference(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

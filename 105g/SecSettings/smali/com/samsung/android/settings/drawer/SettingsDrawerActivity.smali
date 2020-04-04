.class public Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;
.super Lcom/samsung/android/settings/SettingsBaseActivity;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$PackageReceiver;,
        Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;,
        Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoryListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sTileBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategoryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$PackageReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SettingsDrawerActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->DEBUG:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$PackageReceiver;-><init>(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$PackageReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100()Landroid/util/ArraySet;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->onCategoriesChanged()V

    return-void
.end method

.method private onCategoriesChanged()V
    .locals 3

    const-string v0, "SettingsDrawerActivity#onCategoriesChanged"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoryListener;

    invoke-interface {v2}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoryListener;->onCategoriesChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public addCategoryListener(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoryListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSettingPkg()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.settings"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "SettingsDrawerActivity#onCreate"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const-string v0, "SettingsDrawerActivity#onResume"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;-><init>(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->onSupportNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public remCategoryListener(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoryListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTileEnabled(Landroid/content/ComponentName;Z)Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-ne v4, p2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    sget-object v2, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    if-eqz p2, :cond_4

    nop

    move v2, v3

    goto :goto_3

    :cond_4
    const/4 v2, 0x2

    :goto_3
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return v3
.end method

.method public updateCategories()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;-><init>(Lcom/samsung/android/settings/drawer/SettingsDrawerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.class public Lcom/android/settings/applications/AppStorageSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;,
        Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/applications/AppInfoWithHeader;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
        ">;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/settingslib/applications/ApplicationsState$Callbacks;"
    }
.end annotation


# static fields
.field private static INTERNAL_STORAGE_TEXT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

.field private mCacheCleared:Z

.field private mCanClearData:Z

.field private mCandidates:[Landroid/os/storage/VolumeInfo;

.field private mChangeStorageButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

.field private mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

.field private mClearUri:Lcom/android/settings/applications/LayoutPreference;

.field private mClearUriButton:Landroid/widget/Button;

.field private mDataCleared:Z

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:Landroid/content/pm/ApplicationInfo;

.field mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

.field private mStorageUsed:Landroid/support/v7/preference/Preference;

.field private mUri:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$3;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/AppStorageSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/applications/AppStorageSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/settings/applications/AppStorageSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/applications/AppStorageSettings;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateSize()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private clearUriPermissions()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->clearGrantedUriPermissions(Ljava/lang/String;)V

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "com.android.documentsui.scopedAccess"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "permissions"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asking "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to delete permissions for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " entries for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    return-void
.end method

.method private getStorageType()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f121993    # 1.9420008E38f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method private initDataButtons()V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x41

    if-ne v4, v1, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-nez v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v5, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v1

    :goto_3
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    nop

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    const v7, 0x7f1204d3

    if-nez v0, :cond_7

    if-nez v5, :cond_8

    :cond_7
    if-nez v1, :cond_9

    :cond_8
    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v8, v7}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iput-boolean v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    goto :goto_6

    :cond_9
    if-eqz v0, :cond_a

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const v8, 0x7f120e1c

    invoke-virtual {v7, v8}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    goto :goto_5

    :cond_a
    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v8, v7}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    :goto_5
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    new-instance v8, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$uXyfUeZFqT2Ct1euRP3fPo2Es3o;

    invoke-direct {v8, p0}, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$uXyfUeZFqT2Ct1euRP3fPo2Es3o;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    invoke-virtual {v7, v8}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    :goto_6
    iget-boolean v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    goto :goto_7

    :cond_b
    const-string v7, "com.samsung.android.themecenter"

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    :cond_c
    :goto_7
    const-string v7, "com.wssyncmldm"

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "com.ws.dm"

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v7, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setEnabled(Z)V

    :cond_e
    const-string v7, "com.sec.android.app.setupwizardlegalprovider"

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    :cond_f
    return-void
.end method

.method private initMoveDialog()V
    .locals 14

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    sget-object v4, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "candidates: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_7

    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v8, v7, [Landroid/os/storage/VolumeInfo;

    iput-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    const/4 v8, 0x0

    move v9, v5

    move v5, v8

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v10}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v10

    array-length v11, v3

    if-ge v5, v11, :cond_1

    aget-object v11, v3, v5

    const-string/jumbo v12, "usb"

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    sget-object v12, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v13, "AppStorage is USB"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_1
    sget-object v11, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v11

    sget-object v12, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v9, v5

    goto :goto_1

    :cond_2
    iget-object v11, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    invoke-virtual {v11}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v11

    sget-object v12, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    move v9, v5

    :cond_3
    :goto_1
    sub-int v11, v5, v6

    aput-object v10, v4, v11

    iget-object v11, p0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    sub-int v12, v5, v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/VolumeInfo;

    aput-object v13, v11, v12

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x2

    if-ne v5, v10, :cond_5

    if-eqz v6, :cond_5

    sget-object v5, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v8, "only 2 items with USB"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "storage_used"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)Z

    const-string v5, "change_storage_button"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v5, "storage_space"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)Z

    return-void

    :cond_5
    new-array v5, v7, [Ljava/lang/CharSequence;

    nop

    :goto_3
    if-ge v8, v7, :cond_6

    aget-object v10, v4, v8

    aput-object v10, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f1204b0

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5, v9, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v10, 0x7f120475

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    goto :goto_4

    :cond_7
    const-string/jumbo v4, "storage_used"

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)Z

    const-string v4, "change_storage_button"

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v4, "storage_space"

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)Z

    :goto_4
    return-void

    :cond_8
    :goto_5
    sget-object v0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v1, "initMoveDialog : mAppEntry or mAppEntry.info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initiateClearUserData()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x36c

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-virtual {v1, v0, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v4, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t clear application user data for package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/applications/AppStorageSettings;->showDialogInner(II)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const v4, 0x7f1211eb

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    :goto_0
    return-void
.end method

.method private isApplicationClearCacheDisabledByMDM()Z
    .locals 7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "false"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v6, "isApplicationClearCacheDisabled"

    invoke-static {v2, v4, v6, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isMoveInProgress()Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    return v1
.end method

.method private isSDcardMoveAvailable()Z
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v3

    move v3, v0

    move v0, v5

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v8, v9, v5, v10}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v8

    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v8

    sget-object v9, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v10, "Could not find package"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static synthetic lambda$initDataButtons$0(Lcom/android/settings/applications/AppStorageSettings;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->handleClearDataClick()V

    return-void
.end method

.method public static synthetic lambda$updateUiWithSize$1(Lcom/android/settings/applications/AppStorageSettings;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->handleClearDataClick()V

    return-void
.end method

.method public static synthetic lambda$updateUiWithSize$2(Lcom/android/settings/applications/AppStorageSettings;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->handleClearCacheClick()V

    return-void
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const v3, 0x7f1204d3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    sget-object v3, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleared user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.android.universalswitch"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.universalSwitch.CLEARDATA_ACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.permission.universalSwitch_CLEARDATA"

    sget-object v5, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v6, "Sending Broadcast to Universal Switch"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    const-string v3, "com.samsung.hongbaoassistant"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hongbao_assistant"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    if-eqz v2, :cond_2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.hongbaoassistant"

    const-string v5, "com.samsung.hongbaoassistant.HongbaoNotificationService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    sget-object v3, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHongbaoAssistantOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Restart HongbaoAssistant if true."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateSize()V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    :goto_1
    return-void
.end method

.method private refreshButtons()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initDataButtons()V

    return-void
.end method

.method private refreshGrantedUriPermissions()V
    .locals 15

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->removeUriPermissionsFromUi()V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/GrantedUriPermission;

    iget-object v8, v6, Landroid/app/GrantedUriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v9

    :try_start_0
    iget-object v10, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/MutableInt;

    if-nez v11, :cond_1

    new-instance v12, Landroid/util/MutableInt;

    invoke-direct {v12, v7}, Landroid/util/MutableInt;-><init>(I)V

    invoke-interface {v4, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget v12, v11, Landroid/util/MutableInt;->value:I

    add-int/2addr v12, v7

    iput v12, v11, Landroid/util/MutableInt;->value:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_2
    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/MutableInt;

    iget v9, v9, Landroid/util/MutableInt;->value:I

    new-instance v10, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f10004b

    new-array v13, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v3

    invoke-virtual {v11, v12, v9, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v3}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    const v11, 0x7f0d0091

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v10, v5}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    sget-object v11, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding preference \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "\' at order "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v11, v10}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    :cond_3
    iget-boolean v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v6, v5}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private removeUriPermissionsFromUi()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/LayoutPreference;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setEnabledClearDataBtn(Z)V
    .locals 2

    const-string v0, "com.samsung.android.themecenter"

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    return-void
.end method

.method private setupViews()V
    .locals 5

    new-instance v0, Lcom/android/settings/applications/AppStorageSizesController$Builder;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStorageSizesController$Builder;-><init>()V

    const-string/jumbo v1, "total_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setTotalSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    const-string v1, "app_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setAppSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    const-string v1, "data_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setDataSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    const-string v1, "cache_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setCacheSizePreference(Landroid/support/v7/preference/Preference;)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    const v1, 0x7f12051a

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setComputingString(I)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    const v1, 0x7f120bed

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->setErrorString(I)Lcom/android/settings/applications/AppStorageSizesController$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStorageSizesController$Builder;->build()Lcom/android/settings/applications/AppStorageSizesController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    const-string v0, "header_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ActionButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const-string/jumbo v0, "storage_used"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f12198a

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const v1, 0x7f1216c6

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "change_storage_button"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    const v2, 0x7f0a0135

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    const v3, 0x7f1204ac

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    const v3, 0x7f1204cc

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    const-string/jumbo v1, "uri_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/support/v7/preference/PreferenceCategory;

    const-string v3, "clear_uri_button"

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/LayoutPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    const v2, 0x7f1204d2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateSize()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v3, "Could not find package"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 5

    const v0, 0x7f12077a

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v1

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1204d3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1204cf

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/AppStorageSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/AppStorageSettings$2;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f1204cd

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/applications/AppStorageSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/AppStorageSettings$1;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120774

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method handleClearCacheClick()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xf18

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_0

    nop

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x36d

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method handleClearDataClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xf17

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_0

    nop

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->showDialogInner(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getEntityHeader()Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->setAutoRemoveInsetCategory(Z)V

    new-instance v1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->seslSetSubheaderRoundedBg(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getEntityHeader()Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    aget-object v1, v1, p2

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v6, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string v6, "internal storage => external storage"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v6, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "external storage => internal storage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;

    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.PACKAGE_NAME"

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/AppStorageSettings;->startActivity(Landroid/content/Intent;)V

    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->isMoveInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xf23

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_1

    nop

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->clearUriPermissions()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12198a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    const-string v0, "cache_cleared"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    const-string v0, "data_cleared"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040a3b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    const v0, 0x7f15001b

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->setupViews()V

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshUi()Z

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;

    new-instance v2, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v2, v0}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mUserId:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V

    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/AppStorageSizesController;->setResult(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppStorageSettings;->updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/AppStorageSettings;->onLoadFinished(Landroid/content/Loader;Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onResume()V

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v3, "isSDCardMoveAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSDCardMoveAllowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->isSDcardMoveAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->updateSize()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "cache_cleared"

    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "data_cleared"

    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected refreshUi()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->retrieveAppEntry()Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStorageSizesController;->getLastResult()Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->getStorageType()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshButtons()V

    const/4 v0, 0x1

    return v0
.end method

.method updateUiWithSize(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController;->setCacheCleared(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStorageSizesController;->setDataCleared(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mSizeController:Lcom/android/settings/applications/AppStorageSizesController;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/AppStorageSizesController;->updateUi(Landroid/content/Context;)V

    const/4 v0, 0x0

    if-nez p1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getDataBytes()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    iget-boolean v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataCleared:Z

    if-eqz v8, :cond_4

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-direct {p0, v8}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    new-instance v9, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$n1EpAla7gNI7Nnl-O3UD0UWSgTo;

    invoke-direct {v9, p0}, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$n1EpAla7gNI7Nnl-O3UD0UWSgTo;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    invoke-virtual {v8, v9}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    goto :goto_1

    :cond_5
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    :goto_1
    cmp-long v6, v2, v6

    if-lez v6, :cond_7

    iget-boolean v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheCleared:Z

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v6, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v1

    new-instance v6, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$DjRyx_XFfzsxe3o1nZS2usao_fc;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$DjRyx_XFfzsxe3o1nZS2usao_fc;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    invoke-virtual {v1, v6}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    :goto_3
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->isApplicationClearCacheDisabledByMDM()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    :cond_8
    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v1, :cond_9

    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    :cond_9
    return-void

    :cond_a
    :goto_4
    sget-object v0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUiWithSize : mAppEntry or mAppEntry.info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

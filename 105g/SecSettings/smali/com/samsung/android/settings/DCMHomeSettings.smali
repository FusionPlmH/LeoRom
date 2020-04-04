.class public Lcom/samsung/android/settings/DCMHomeSettings;
.super Landroid/app/ListFragment;
.source "DCMHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;
    }
.end annotation


# static fields
.field public static final PRELOADED_HOME_PKGS:[Ljava/lang/String;


# instance fields
.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentHomePkg:Ljava/lang/String;

.field private mHasEasyLauncher:Z

.field mHomeApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShowHardKey:Z

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mPreloadedHomeList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSamsungHomeLabel:Ljava/lang/String;

.field private mSelectedHomePkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "com.nttdocomo.android.paletteui"

    const-string v1, "com.nttdocomo.android.dhome"

    const-string v2, "com.google.android.setupwizard"

    const-string v3, "com.sec.android.app.launcher"

    const-string v4, "com.sec.android.app.easylauncher"

    const-string v5, "com.sec.android.app.kidslauncher"

    const-string v6, "com.sec.android.app.SecSetupWizard"

    const-string v7, "com.sec.android.app.longlifemodelauncher"

    const-string v8, "com.sec.android.app.kidshome"

    const-string v9, "com.android.settings"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/DCMHomeSettings;->PRELOADED_HOME_PKGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/samsung/android/settings/DCMHomeSettings;->PRELOADED_HOME_PKGS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPreloadedHomeList:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomePkg:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSamsungHomeLabel:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mIsShowHardKey:Z

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/DCMHomeSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomePkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/DCMHomeSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/DCMHomeSettings;->changeHome(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/DCMHomeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->startLauncher()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSamsungHomeLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private changeHome(I)V
    .locals 5

    const-string v0, "DCMHomeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeHome "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_0

    const-string v1, "DCMHomeSettings"

    const-string v2, "changeHome) info is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DCMHomeSettings;->setPreferredHome(Landroid/content/pm/ResolveInfo;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.nttdocomo.android.dhome"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_5

    const-string v2, "com.nttdocomo.android.paletteui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "com.sec.android.app.launcher"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v4, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_1

    :cond_3
    const-string v2, "com.sec.android.app.easylauncher"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    goto :goto_1

    :cond_5
    :goto_0
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/settings/DCMHomeSettings;->setEasymode(ZZ)V

    :goto_1
    return-void
.end method

.method private getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isPreffered(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v1, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private setEasymode(ZZ)V
    .locals 4

    const-string v0, "DCMHomeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEasymode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDCMHome="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isEasyModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DCMHomeSettings"

    const-string v1, "Easy mode feature is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "easy_mode_switch"

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "com.sec.android.app.easylauncher"

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sec.android.app.easylauncher"

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "com.sec.android.app.easylauncher"

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.sec.android.app.easylauncher"

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSelectedHomePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "easymode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "easymode_from"

    const-string/jumbo v3, "settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_3

    const-string v2, "homemode_jpn"

    const-string v3, "docomo"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v2, "homemode_jpn"

    const-string v3, "samsung"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "easymode"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "easymode_from"

    const-string/jumbo v3, "settings"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_4

    const-string v1, "homemode_jpn"

    const-string v3, "docomo"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string v1, "homemode_jpn"

    const-string v3, "samsung"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    return-void
.end method

.method private startLauncher()V
    .locals 3

    const-string v0, "DCMHomeSettings"

    const-string/jumbo v1, "startLauncher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DCMHomeSettings;->startActivity(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const v3, 0x7f1500cd

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;-><init>(Lcom/samsung/android/settings/DCMHomeSettings;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DCMHomeSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    const v2, 0x10040

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string v1, "com.nttdocomo.android.dhome"

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string v2, "com.nttdocomo.android.dhome"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "DCMHomeSettings"

    const-string v2, "add home : com.nttdocomo.android.dhome"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "com.nttdocomo.android.paletteui"

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string v2, "com.nttdocomo.android.paletteui"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "DCMHomeSettings"

    const-string v2, "add home : com.nttdocomo.android.paletteui"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string v1, "com.sec.android.app.launcher"

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "com.sec.android.app.launcher"

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mSamsungHomeLabel:Ljava/lang/String;

    const-string v2, "DCMHomeSettings"

    const-string v3, "add home : com.sec.android.app.launcher"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "com.sec.android.app.easylauncher"

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    const-string v3, "com.sec.android.app.easylauncher"

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/DCMHomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "DCMHomeSettings"

    const-string v3, "add home : com.sec.android.app.easylauncher"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v1, "DCMHomeSettings"

    const-string v3, "There is no easy launcher"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "device_provisioned"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-nez v1, :cond_6

    nop

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPreloadedHomeList:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_4
    if-ltz v2, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "DCMHomeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "com.google.android.setupwizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const-string v5, "DCMHomeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Remove] pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mIsShowHardKey:Z

    const/16 v2, 0x37

    invoke-static {v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d01ba

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    const-string v0, "DCMHomeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xf39

    invoke-static {v1, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1214c0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/DCMHomeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/samsung/android/settings/DCMHomeSettings$1;

    invoke-direct {v4, p0, p3}, Lcom/samsung/android/settings/DCMHomeSettings$1;-><init>(Lcom/samsung/android/settings/DCMHomeSettings;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    const-string v1, "DCMHomeSettings"

    const-string v2, "Do not change to current home"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "DCMHomeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentHomePkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mCurrentHomePkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/DCMHomeSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public setPreferredHome(Landroid/content/pm/ResolveInfo;)V
    .locals 8

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ComponentName;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v3

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/DCMHomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget v4, p1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.class public Lcom/samsung/android/settings/lockscreen/AppShortcutList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppShortcutList.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;,
        Lcom/samsung/android/settings/lockscreen/AppShortcutList$AlphaComparator;,
        Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;,
        Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;
    }
.end annotation


# instance fields
.field private grid_view:Landroid/widget/GridView;

.field handler:Landroid/os/Handler;

.field private isStatus:Z

.field private mAppListAdapter:Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

.field private mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDirection:Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;

.field private mLoadAppListTask:Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;

.field private mLoading:Landroid/view/ViewGroup;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private pressed_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mBlackList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/AppShortcutList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$1;-><init>(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mLoadAppListTask:Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->pressed_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->stopLoading()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mAppListAdapter:Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/settings/lockscreen/AppShortcutList;Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;)Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mAppListAdapter:Lcom/samsung/android/settings/lockscreen/AppShortcutList$AppListAdapter;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->grid_view:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->startLoading()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getAppListAdapter()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private doAppLoading(Z)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mLoadAppListTask:Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->clear()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mLoadAppListTask:Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mLoadAppListTask:Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->startLoading()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private getAppListAdapter()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;

    iget v3, v3, Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;->name_idx:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;

    iget v4, v4, Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;->opposite_name_idx:I

    invoke-static {v2, v4}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13, v13}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    new-instance v19, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v11, v19

    move-object v12, v10

    move-object v13, v15

    move-object v7, v15

    move-object/from16 v15, v18

    invoke-direct/range {v11 .. v17}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    if-eqz v4, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_1
    if-eqz v3, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_2
    invoke-direct {v0, v10}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->isBlackList(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_3
    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;->mIsActive:Z

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    move v7, v12

    goto/16 :goto_0

    :cond_5
    new-instance v7, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AlphaComparator;

    invoke-direct {v7}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$AlphaComparator;-><init>()V

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private getBlackList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private isBlackList(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mBlackList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return v1
.end method

.method private startLoading()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private stopLoading()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1149

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pressed_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->pressed_type:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->pressed_type:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->grid_view:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->grid_view:Landroid/widget/GridView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->grid_view:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06016f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/GridView;->semSetRoundedCornerColor(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->grid_view:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0805da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->grid_view:Landroid/widget/GridView;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/AppShortcutList$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$2;-><init>(Lcom/samsung/android/settings/lockscreen/AppShortcutList;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0485

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120d34

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f130376

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->grid_view:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;

    iget v3, v3, Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;->status_idx:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->isStatus:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getBlackList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mBlackList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;-><init>(Lcom/samsung/android/settings/lockscreen/AppShortcutList;Lcom/samsung/android/settings/lockscreen/AppShortcutList$1;)V

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mLoadAppListTask:Lcom/samsung/android/settings/lockscreen/AppShortcutList$LoadAppListTask;

    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->isStatus:Z

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->doAppLoading(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->grid_view:Landroid/widget/GridView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/GridView;->semSetGoToTopEnabled(ZI)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->grid_view:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->grid_view:Landroid/widget/GridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v0, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d01e1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;

    iget v1, v1, Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;->status_idx:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    if-nez p2, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;

    iget v2, v2, Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;->status_idx:I

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->saveApplicationData(Landroid/content/Context;ILjava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->doAppLoading(Z)V

    const-string v1, "left"

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1146

    const/16 v2, 0x1147

    invoke-static {v1, v2, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x1149

    const/16 v2, 0x114a

    invoke-static {v1, v2, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :goto_1
    return-void
.end method

.method protected saveApplicationData(Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->mDirection:Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;

    iget v2, v2, Lcom/samsung/android/settings/lockscreen/AppShortcutList$Direction;->name_idx:I

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/lockscreen/AppShortcutInfo;->saveApplicationData(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

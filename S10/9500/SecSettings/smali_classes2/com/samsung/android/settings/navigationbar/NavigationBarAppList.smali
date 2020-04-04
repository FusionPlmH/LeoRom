.class public Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;
.super Landroid/app/ListActivity;
.source "NavigationBarAppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;
    }
.end annotation


# static fields
.field private static sDbKey:Ljava/lang/String;


# instance fields
.field private mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private getAppListAdapter()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x80

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10, v10}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v6, v7, v10, v8}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$1;)V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dbkey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->sDbKey:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->sDbKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NavigationBarAppList"

    const-string v2, "onCreate() dbKey is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getAppListAdapter()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$1;)V

    move-object v8, v2

    invoke-static {v1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v9, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    const v5, 0x7f0d01d8

    const/4 v6, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v4, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v9, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->insetDividerWithAppIcon(Landroid/content/Context;Landroid/widget/ListView;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "NavigationBarAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " app selected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v3, v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NavigationBarAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " app title : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {v3, p3}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v3, v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->sDbKey:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LaunchApp;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "NavigationBarAppList"

    const-string v1, "onOptionsItemSelected() up button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->finish()V

    const/4 v0, 0x1

    return v0
.end method

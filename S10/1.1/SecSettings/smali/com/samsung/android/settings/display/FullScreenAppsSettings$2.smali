.class Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;
.super Ljava/lang/Object;
.source "FullScreenAppsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$400(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "FullScreenAppsSettings"

    const-string v4, "Collecting apps..."

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$200(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    const-string v3, "FullScreenAppsSettings"

    const-string v5, "Getting ApplicationInfo..."

    invoke-static {v3, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$400(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$500(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/content/pm/LauncherApps;

    move-result-object v7

    new-instance v8, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    const-string v8, "FullScreenAppsSettings"

    const-string v9, "  launchable activities:"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/LauncherActivityInfo;

    const-string v10, "FullScreenAppsSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$600(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/settings/Rune;->supportDisplayCutOut(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "com.android.settings"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    iget-object v11, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$400(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_3
    iget-object v11, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    iget-object v12, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v12}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$600(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v6, v9, v12, v5}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Landroid/app/Activity;)Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v12}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$400(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v8, "FullScreenAppsSettings"

    const-string v9, "Finish getting ApplicationInfo"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$202(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Z)Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$700(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$800(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "FullScreenAppsSettings"

    const-string v6, "Sorting apps... (sort by type)"

    invoke-static {v3, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$400(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$900()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$600(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/Rune;->supportDisplayCutOut(Landroid/content/Context;)Z

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v7, :cond_a

    move-object v7, v6

    move v6, v5

    :goto_2
    if-ge v6, v11, :cond_11

    move-object v13, v7

    move v7, v5

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_9

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    move-object v13, v14

    if-nez v6, :cond_7

    iget v14, v13, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-eqz v14, :cond_6

    iget v14, v13, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-eq v14, v10, :cond_6

    iget v14, v13, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-eq v14, v11, :cond_6

    iget v14, v13, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-eq v14, v9, :cond_6

    iget v14, v13, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-ne v14, v8, :cond_8

    :cond_6
    iget-object v14, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$700(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget v14, v13, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-ne v14, v12, :cond_8

    iget-object v14, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$700(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v6, v6, 0x1

    move-object v7, v13

    goto :goto_2

    :cond_a
    move-object v7, v6

    move v6, v5

    :goto_5
    if-ge v6, v10, :cond_11

    move-object v13, v7

    move v7, v5

    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_10

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    move-object v13, v14

    if-nez v6, :cond_c

    iget v14, v13, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-eq v14, v9, :cond_b

    iget v14, v13, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-eq v14, v8, :cond_b

    iget v14, v13, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-ne v14, v11, :cond_f

    :cond_b
    iget-object v14, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$700(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    if-ne v6, v12, :cond_e

    iget v14, v13, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-eqz v14, :cond_d

    iget v14, v13, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-ne v14, v10, :cond_f

    :cond_d
    iget-object v14, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$700(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    iget v14, v13, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-ne v14, v12, :cond_f

    iget-object v14, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v14}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$700(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_10
    add-int/lit8 v6, v6, 0x1

    move-object v7, v13

    goto :goto_5

    :cond_11
    goto :goto_8

    :cond_12
    const-string v3, "FullScreenAppsSettings"

    const-string v6, "Sorting apps... (sort by name)"

    invoke-static {v3, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$700(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$400(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$700(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$900()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_8
    new-instance v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;

    iget-object v6, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-direct {v3, v6, v4}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;)V

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$CreatePreferenceNewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-string v5, "FullScreenAppsSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Collected apps in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms, mRows.size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$400(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / mSortedRows.size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$700(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;
.super Ljava/lang/Object;
.source "NavigationBarHideButtonAppsSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "ShowHideButtonAppsSettings"

    const-string v4, "Collecting apps..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$300(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "ShowHideButtonAppsSettings"

    const-string v4, "Getting ApplicationInfo..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$400(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/content/pm/LauncherApps;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    const-string v7, "ShowHideButtonAppsSettings"

    const-string v8, "  launchable activities:"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LauncherActivityInfo;

    const-string v9, "ShowHideButtonAppsSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$500(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$500(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "ShowHideButtonAppsSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "skip package : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v10, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    iget-object v11, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$600(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v5, v8, v11, v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Landroid/app/Activity;)Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$AppRow;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v11}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v7, "ShowHideButtonAppsSettings"

    const-string v8, "Finish getting ApplicationInfo"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$700(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const-string v7, "ShowHideButtonAppsSettings"

    const-string v8, "Sorting apps... (sort by name)"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$700(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v8}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$700(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$800()Ljava/util/Comparator;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$302(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;Z)Z

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$900(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$1100(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$1000(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-string v5, "ShowHideButtonAppsSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Collected apps in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms, mRows.size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$200(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / mSortedRows.size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;->access$700(Lcom/samsung/android/settings/navigationbar/NavigationBarHideButtonAppsSettings;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

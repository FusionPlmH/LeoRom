.class public Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SecDynamicMenuFeatureProviderImpl.java"

# interfaces
.implements Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBundleFromKey(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    const-string v3, "select_menu"

    invoke-virtual {v2, v3, p2, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    const-class v4, Lcom/samsung/android/settings/external/DynamicMenuData;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v4, "menu"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/external/DynamicMenuData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SecDynamicMenuFeatureProviderImpl"

    const-string v4, "can not call the provider"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-object v1

    :cond_2
    :goto_1
    const-string v0, "SecDynamicMenuFeatureProviderImpl"

    const-string v2, "mContext or uri or key is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getBundleListFromUri(Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/external/DynamicMenuData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    const-string v3, "get_menu_list"

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    const-class v4, Lcom/samsung/android/settings/external/DynamicMenuData;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v4, "menu_list"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SecDynamicMenuFeatureProviderImpl"

    const-string v4, "can not call the provider"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-object v1

    :cond_2
    :goto_1
    const-string v0, "SecDynamicMenuFeatureProviderImpl"

    const-string v2, "mContext or uri or null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getDynamicMenus(Ljava/lang/String;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "SecDynamicMenuFeatureProviderImpl"

    const-string v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v2

    if-eqz v1, :cond_8

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    nop

    invoke-interface {v2, v4}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v6

    if-lez v6, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {v5}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/drawer/Tile;

    iget-object v8, v7, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PREFERENCE_TYPE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "CategoryPreference"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "PreferenceCategory"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    goto :goto_0

    :cond_7
    return-object v0

    :cond_8
    :goto_2
    return-object v0
.end method

.method public getMainSummaryData(Landroid/net/Uri;)Lcom/samsung/android/settings/external/DynamicSummaryData;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, v1

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    if-nez v2, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_1
    return-object v1

    :cond_2
    :try_start_1
    const-string v3, "get_menu_summary"

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4

    const-class v4, Lcom/samsung/android/settings/external/DynamicSummaryData;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v4, "menu_summary"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/external/DynamicSummaryData;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_4

    nop

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_3
    return-object v4

    :cond_4
    if-eqz v2, :cond_5

    :goto_0
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "SecDynamicMenuFeatureProviderImpl"

    const-string v5, "can not call the provider"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return-object v1

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_6
    throw v1

    :cond_7
    :goto_3
    const-string v0, "SecDynamicMenuFeatureProviderImpl"

    const-string v2, "context or provider is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getUriFromIntent(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.settings.DYNAMIC_MENU_PROVIDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    const-string v0, "SecDynamicMenuFeatureProviderImpl"

    const-string v2, "context or intent is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public hasValidDynamicMenu(Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SecDynamicMenuFeatureProviderImpl"

    const-string v2, "context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v2

    if-eqz v0, :cond_5

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    nop

    invoke-interface {v2, v4}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v1, 0x1

    return v1

    :cond_3
    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v1
.end method

.method public updatePreferenceData(Landroid/net/Uri;Lcom/samsung/android/settings/external/DynamicMenuData;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-class v3, Lcom/samsung/android/settings/external/DynamicMenuData;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v3, "menu"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "checked_change"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SecDynamicMenuFeatureProviderImpl"

    const-string v3, "can not call the provider"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string v0, "SecDynamicMenuFeatureProviderImpl"

    const-string v1, "context or uri or DynamicMenuData is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

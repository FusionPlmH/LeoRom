.class public Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;
.super Ljava/lang/Object;
.source "IndexModule.java"


# instance fields
.field private final indexModuleIndexable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;

.field private final indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

.field private final mAuthority:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->mAuthority:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleIndexable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;

    iput-object p4, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "IndexModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p3, v0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x47f32dc

    if-eq v2, v3, :cond_3

    const v3, 0x220675dd

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "notifyReadyToIndex"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "getInfo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleIndexable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleIndexable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;->onReceiveIndexRequested(Z)V

    return-object p3

    :pswitch_1
    const-string v0, "api_version"

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModuleLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModuleIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    if-eqz v0, :cond_5

    const-string v0, "launchIntent"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->makeAppLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "legacySearchActivity"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->getLegacySearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "inAppSearchActivity"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->makeInAppSearchIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_5
    const-string v0, "isIndexable"

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->isIndexable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isSearchable"

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->isSearchable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    :cond_6
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getApiVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.1.14"

    return-object v0
.end method

.method public final getModule()Landroid/content/pm/ProviderInfo;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->mAuthority:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getModuleIcon()Landroid/graphics/drawable/Icon;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModule()Landroid/content/pm/ProviderInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ProviderInfo;->icon:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModule()Landroid/content/pm/ProviderInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ProviderInfo;->icon:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->makeAppLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->makeAppLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IndexModule"

    const-string v2, "Fail to get Icon from AppLaunchIntent"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModule()Landroid/content/pm/ProviderInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ProviderInfo;->getIconResource()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public final getModuleLabel()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModule()Landroid/content/pm/ProviderInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ProviderInfo;->labelRes:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModule()Landroid/content/pm/ProviderInfo;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->makeAppLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->makeAppLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IndexModule"

    const-string v2, "Fail to get Label from AppLaunchIntent"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getModule()Landroid/content/pm/ProviderInfo;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isIndexable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleIndexable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleIndexable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSearchable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    move-object v1, p0

    move-object v2, p1

    const-string v0, "query"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "requestId"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "limit"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "IndexModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", searchId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", limit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->isSearchable()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    const-string v0, "IndexModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not searchable component: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->mAuthority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchRequest;

    invoke-direct {v0, v4, v3}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    const/4 v7, -0x1

    move v8, v7

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v9, v0

    const-string v9, "IndexModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to get limit: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, v1, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModule;->indexModuleSearchable:Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;

    invoke-interface {v0, v3, v8}, Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;->getSearchResult(Ljava/lang/String;I)Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v9, "IndexModule"

    const-string v10, "SearchResult is fail"

    invoke-static {v9, v10}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;

    invoke-direct {v9, v7}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;-><init>(I)V

    move-object v0, v9

    :cond_2
    move-object v7, v0

    new-instance v0, Landroid/database/MatrixCursor;

    const-string v9, "request"

    const-string v10, "api_version"

    const-string v11, "count"

    const-string v12, "result"

    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v9, v0

    :try_start_1
    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->getTotalCount()I

    move-result v0

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchRequest;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "0.1.14"

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v10, "IndexModule"

    const-string v11, "Fail to get cursor"

    invoke-static {v10, v11, v0}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v9

    :cond_3
    :goto_2
    return-object v6
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

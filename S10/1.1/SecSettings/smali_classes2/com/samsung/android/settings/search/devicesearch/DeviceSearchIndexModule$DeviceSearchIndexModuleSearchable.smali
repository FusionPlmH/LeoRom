.class Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;
.super Ljava/lang/Object;
.source "DeviceSearchIndexModule.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceSearchIndexModuleSearchable"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private query(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "content://com.samsung.android.settings.intelligence.search.provider.SettingSearchProvider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "menu_name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "description"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "menu_path"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "payload"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "icon_uri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    const/4 v3, 0x0

    if-eqz v10, :cond_0

    const-string v7, "settings.packageicon"

    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v3, v7

    :cond_0
    move-object v11, v3

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    move-object v12, v3

    new-instance v3, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchTrampoline;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v13, v3

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v13, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v14, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;

    const/4 v9, 0x0

    move-object v3, v14

    move-object v7, v11

    move-object v8, v13

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Intent;Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$1;)V

    move-object v3, v14

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "DeviceSearchIndexModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URISyntaxException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1
.end method


# virtual methods
.method public getLegacySearchActivity()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSearchResult(Ljava/lang/String;I)Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;
    .locals 20

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->query(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;-><init>(I)V

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v8, p2

    if-lt v3, v8, :cond_0

    goto :goto_3

    :cond_0
    const/4 v9, 0x0

    :try_start_1
    new-instance v18, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;

    const-wide/16 v11, 0x0

    iget-object v13, v7, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mIntent:Landroid/content/Intent;

    iget-object v14, v7, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mIcon:Landroid/net/Uri;

    iget-object v15, v7, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mTitle:Ljava/lang/String;

    iget-object v10, v7, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mMenuPath:Ljava/lang/String;

    iget-object v1, v7, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mDescription:Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v18

    move-object/from16 v17, v1

    invoke-direct/range {v10 .. v17}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;-><init>(JLandroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v18

    if-nez v2, :cond_1

    new-instance v9, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;

    iget-object v10, v7, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mMenuPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    iget-object v9, v7, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mMenuPath:Ljava/lang/String;

    move-object v5, v9

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->addResultItem(Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    if-eqz v5, :cond_2

    iget-object v9, v7, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mMenuPath:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, v7, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mMenuPath:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->addCategory(Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;)V

    new-instance v9, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;

    iget-object v10, v7, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mMenuPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->addResultItem(Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;)V

    iget-object v9, v7, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mMenuPath:Ljava/lang/String;

    move-object v5, v9

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->addResultItem(Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    nop

    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move/from16 v8, p2

    :goto_3
    invoke-virtual {v4, v2}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->addCategory(Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;)V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move/from16 v8, p2

    :goto_4
    const-string v1, "DeviceSearchIndexModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexResultException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public makeAppLaunchIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public makeInAppSearchIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchTrampoline;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

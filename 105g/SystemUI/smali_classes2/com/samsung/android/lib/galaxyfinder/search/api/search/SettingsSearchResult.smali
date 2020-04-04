.class public Lcom/samsung/android/lib/galaxyfinder/search/api/search/SettingsSearchResult;
.super Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
.source "SettingsSearchResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult<",
        "Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;",
        ">;"
    }
.end annotation


# virtual methods
.method protected final getItemColumns()[Ljava/lang/String;
    .locals 4

    const-string v0, "menu_name"

    const-string v1, "menu_icon"

    const-string v2, "menu_path"

    const-string v3, "description"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getResultType()Ljava/lang/String;
    .locals 1

    const-string v0, "Settings"

    return-object v0
.end method

.method protected final getResultVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method protected bridge synthetic transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)[Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SettingsSearchResult;->transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final transformCursorRaw(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;)[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->getMenuName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->getMenuIconStr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->getMenuPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

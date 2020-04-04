.class public Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;
.super Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;
.source "SettingsSearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem$Builder;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private final menuIcon:Landroid/net/Uri;

.field private final menuName:Ljava/lang/String;

.field private menuPath:Ljava/lang/String;


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->menuPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuIconStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->menuIcon:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->menuIcon:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenuName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->menuName:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SettingsSearchResultItem;->menuPath:Ljava/lang/String;

    return-object v0
.end method

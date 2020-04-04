.class public Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;
.super Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;
.source "SearchResultSettingsItem.java"


# direct methods
.method public constructor <init>(JLandroid/content/Intent;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;-><init>(JLandroid/content/Intent;)V

    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;->setIcon(Landroid/net/Uri;I)V

    invoke-virtual {p0, p6}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;->setMenuName(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;->setMenuPath(Ljava/lang/String;)V

    invoke-virtual {p0, p8}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLandroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;-><init>(JLandroid/content/Intent;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "Settings"

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIcon(Landroid/net/Uri;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    const-string v0, "icon"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;->put(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "iconTintColor"

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public setMenuName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    const-string v0, "menuName"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMenuPath(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    const-string v0, "menuPath"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

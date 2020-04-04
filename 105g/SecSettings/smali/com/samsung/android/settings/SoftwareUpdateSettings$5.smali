.class Lcom/samsung/android/settings/SoftwareUpdateSettings$5;
.super Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;
.source "SoftwareUpdateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SoftwareUpdateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/settings/SoftwareUpdateUtils;->isUsingSamsungFota(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SoftwareUpdateSettings"

    const-string v2, "not using samsung Fota. should not add RawData to search index."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v1, "SoftwareUpdateSettings"

    const-string v2, "getRawDataToIndex Software Update"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->values()[Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->shouldEnable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, p1}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->getSearchIndexableRaw(Landroid/content/Context;)Lcom/android/settings/search/SearchIndexableRaw;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/settings/SoftwareUpdateUtils;->isUsingSamsungFota(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;->isPageSearchEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

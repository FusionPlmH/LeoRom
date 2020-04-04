.class public interface abstract Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;
.super Ljava/lang/Object;
.source "SecDynamicMenuFeatureProvider.java"


# virtual methods
.method public abstract getBundleFromKey(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData;
.end method

.method public abstract getBundleListFromUri(Landroid/net/Uri;)Ljava/util/ArrayList;
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
.end method

.method public abstract getDynamicMenus(Ljava/lang/String;Z)Ljava/util/List;
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
.end method

.method public abstract getMainSummaryData(Landroid/net/Uri;)Lcom/samsung/android/settings/external/DynamicSummaryData;
.end method

.method public abstract getUriFromIntent(Landroid/content/Intent;)Landroid/net/Uri;
.end method

.method public abstract hasValidDynamicMenu(Ljava/lang/String;)Z
.end method

.method public abstract updatePreferenceData(Landroid/net/Uri;Lcom/samsung/android/settings/external/DynamicMenuData;)V
.end method

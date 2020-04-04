.class public Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;
.super Ljava/lang/Object;
.source "SecDynamicMenuSummaryBuilder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSummaryArrary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetFragmentClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->mSummaryArrary:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->mTargetFragmentClass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addSummary(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->mSummaryArrary:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public buildSummaryString(I)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->mSummaryArrary:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public init()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->mSummaryArrary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings/overlay/FeatureFactory;->getSecDynamicMenuFeatureProvider(Landroid/content/Context;)Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->mTargetFragmentClass:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    nop

    invoke-interface {v0, v4}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v6, "SecDynamicMenuSummaryBuilder"

    const-string v7, "NO dashboard tiles for SecDynamicMenuSummaryBuilder"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v3, "SecDynamicMenuSummaryBuilder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tile list is empty, skipping category "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/drawer/Tile;

    iget-object v9, v8, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-interface {v1, v9}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->getUriFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v1, v9}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->getMainSummaryData(Landroid/net/Uri;)Lcom/samsung/android/settings/external/DynamicSummaryData;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/samsung/android/settings/external/DynamicSummaryData;->getOrder()I

    move-result v11

    invoke-virtual {v10}, Lcom/samsung/android/settings/external/DynamicSummaryData;->getSummary()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuSummaryBuilder;->addSummary(ILjava/lang/String;)V

    :cond_4
    goto :goto_1

    :cond_5
    goto :goto_0

    :cond_6
    return-void
.end method

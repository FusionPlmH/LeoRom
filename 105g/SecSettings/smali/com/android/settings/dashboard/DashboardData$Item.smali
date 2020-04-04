.class Lcom/android/settings/dashboard/DashboardData$Item;
.super Ljava/lang/Object;
.source "DashboardData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation


# instance fields
.field public final entity:Ljava/lang/Object;

.field public final id:I

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    iput p2, p0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    iput p3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/dashboard/DashboardData$Item;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/settings/dashboard/DashboardData$Item;

    iget v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    iget v4, v1, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    if-ne v3, v4, :cond_13

    iget v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    iget v4, v1, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    if-eq v3, v4, :cond_2

    goto/16 :goto_8

    :cond_2
    iget v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    const v4, 0x7f0d003b

    if-eq v3, v4, :cond_f

    const v4, 0x7f0d005c

    if-eq v3, v4, :cond_b

    const v4, 0x7f0d0367

    if-eq v3, v4, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, v1, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    return v0

    :cond_4
    if-eqz v3, :cond_a

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_6

    return v2

    :cond_6
    const/4 v5, 0x1

    move v6, v5

    move v5, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_9

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/settings/suggestions/Suggestion;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/settings/suggestions/Suggestion;

    invoke-virtual {v7}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v8}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v6, :cond_7

    invoke-virtual {v7}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v0

    goto :goto_1

    :cond_7
    move v9, v2

    :goto_1
    move v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    return v2

    :cond_9
    return v6

    :cond_a
    :goto_2
    return v2

    :cond_b
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    check-cast v3, Lcom/android/settingslib/drawer/Tile;

    iget-object v4, v1, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    iget v5, v3, Lcom/android/settingslib/drawer/Tile;->displayBadgeCnt:I

    iget v6, v4, Lcom/android/settingslib/drawer/Tile;->badgeCnt:I

    if-ne v5, v6, :cond_c

    iget v5, v3, Lcom/android/settingslib/drawer/Tile;->cornerFlags:I

    iget v6, v4, Lcom/android/settingslib/drawer/Tile;->cornerFlags:I

    if-ne v5, v6, :cond_c

    move v5, v0

    goto :goto_3

    :cond_c
    move v5, v2

    :goto_3
    if-eqz v5, :cond_d

    iget-boolean v6, v3, Lcom/android/settingslib/drawer/Tile;->displayIsEnable:Z

    iget-boolean v7, v4, Lcom/android/settingslib/drawer/Tile;->isEnable:Z

    if-ne v6, v7, :cond_d

    move v6, v0

    goto :goto_4

    :cond_d
    move v6, v2

    :goto_4
    move v5, v6

    if-eqz v5, :cond_e

    iget-object v6, v3, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    iget-object v7, v4, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, v3, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    iget-object v7, v4, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_5

    :cond_e
    move v0, v2

    :goto_5
    return v0

    :cond_f
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/settingslib/drawer/Tile;

    if-eqz v5, :cond_10

    move-object v5, v4

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v5, Lcom/android/settingslib/drawer/Tile;->remoteViews:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_10

    return v2

    :cond_10
    :goto_6
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    if-nez v3, :cond_12

    iget-object v3, v1, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    if-nez v3, :cond_11

    goto :goto_7

    :cond_11
    move v0, v2

    goto :goto_7

    :cond_12
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_7
    return v0

    :cond_13
    :goto_8
    return v2
.end method

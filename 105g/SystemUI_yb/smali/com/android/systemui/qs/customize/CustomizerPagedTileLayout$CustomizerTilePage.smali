.class public Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;
.super Lcom/android/systemui/qs/customize/CustomizerTileLayout;
.source "CustomizerPagedTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizerTilePage"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->updateResources()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILandroid/view/View$OnDragListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILandroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->updateResources()Z

    return-void
.end method

.method private getRows()I
    .locals 2

    const-class v0, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSScreenGridResource;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSScreenGridResource;->getScreenGridRows()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public isFull()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mColumns:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mMaxRows:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setMaxRows(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mMaxRows:I

    return-void
.end method

.method public updateResources()Z
    .locals 5

    const-string v0, "CSTMPagedTileLayout"

    const-string/jumbo v1, "updateResources 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getRows()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mMaxRows:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mMaxRows:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->requestLayout()V

    :cond_1
    invoke-super {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->updateResources()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    return v2
.end method

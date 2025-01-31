.class Landroid/view/ImageFilterBridge;
.super Ljava/lang/Object;
.source "ImageFilterBridge.java"


# instance fields
.field private mHwuiBridge:Landroid/view/HwuiBridge;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    new-instance v0, Landroid/view/HwuiBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/HwuiBridge;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    iget-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v0}, Landroid/view/HwuiBridge;->getRenderingController()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/ImageFilterBridge;->nInitHwuiBridge(J)V

    return-void
.end method

.method private static native nAddImageFilterClipRect(JJIIIIF)V
.end method

.method private static native nClearImageFilterClipRects(JJ)V
.end method

.method private static native nClearImageFilters(JJ)V
.end method

.method private static native nInitHwuiBridge(J)V
.end method

.method private static native nSetImageFilter(JJJI)V
.end method

.method private processImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)V
    .locals 9

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/samsung/android/graphics/SemGenericImageFilter;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/graphics/SemGenericImageFilter;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;->getFiltersSet()Lcom/samsung/android/graphics/SemImageFilterSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/graphics/SemImageFilterSet;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilterSet;

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/SemImageFilterSet;->getFilterAt(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/ImageFilterBridge;->processImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v1}, Landroid/view/HwuiBridge;->getNativeRenderNode()J

    move-result-wide v2

    iget-object v1, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v1}, Landroid/view/HwuiBridge;->getRenderingController()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/samsung/android/graphics/SemImageFilter;->getNativeImageFilter()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/view/ImageFilterBridge;->nSetImageFilter(JJJI)V

    return-void

    :cond_2
    return-void
.end method


# virtual methods
.method addImageFilterClipRect(IIIIF)V
    .locals 10

    iget-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v0}, Landroid/view/HwuiBridge;->getNativeRenderNode()J

    move-result-wide v1

    iget-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v0}, Landroid/view/HwuiBridge;->getRenderingController()J

    move-result-wide v3

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-static/range {v1 .. v9}, Landroid/view/ImageFilterBridge;->nAddImageFilterClipRect(JJIIIIF)V

    return-void
.end method

.method clearImageFilterClipRects()V
    .locals 4

    iget-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v0}, Landroid/view/HwuiBridge;->getNativeRenderNode()J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v2}, Landroid/view/HwuiBridge;->getRenderingController()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ImageFilterBridge;->nClearImageFilterClipRects(JJ)V

    return-void
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v0, p1}, Landroid/view/HwuiBridge;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t run on non-hardware accelerated canvas. Canvas must be instance of DisplayListCanvas!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)V
    .locals 4

    iget-object v0, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v0}, Landroid/view/HwuiBridge;->getNativeRenderNode()J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/ImageFilterBridge;->mHwuiBridge:Landroid/view/HwuiBridge;

    invoke-virtual {v2}, Landroid/view/HwuiBridge;->getRenderingController()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ImageFilterBridge;->nClearImageFilters(JJ)V

    invoke-direct {p0, p1}, Landroid/view/ImageFilterBridge;->processImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)V

    return-void
.end method

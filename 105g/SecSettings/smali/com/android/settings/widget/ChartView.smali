.class public Lcom/android/settings/widget/ChartView;
.super Landroid/widget/FrameLayout;
.source "ChartView.java"


# instance fields
.field private mContent:Landroid/graphics/Rect;

.field mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mOptimalWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mOptimalWidthWeight:F

.field mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/ChartView;->mOptimalWidth:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/widget/ChartView;->mOptimalWidthWeight:F

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/ChartView;->mContent:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/settings/R$styleable;->ChartView:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartView;->setOptimalWidth(IF)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/ChartView;->setClipToPadding(Z)V

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/ChartView;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1

    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    return-void
.end method

.method protected layoutSweep(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartView;->layoutSweep(Lcom/android/settings/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/settings/widget/ChartSweepView;->layout(IIII)V

    return-void
.end method

.method protected layoutSweep(Lcom/android/settings/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->getMargins()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->getFollowAxis()I

    move-result v1

    const v2, 0x800033

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->getPoint()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iput v1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v1, v3, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->getPoint()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v1, v3, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/android/settings/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartView;->getPaddingTop()I

    move-result v3

    sub-int v4, p4, p2

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v6, p5, p3

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Lcom/android/settings/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, v0, Lcom/android/settings/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, v0, Lcom/android/settings/widget/ChartView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    int-to-float v4, v1

    invoke-interface {v3, v4}, Lcom/android/settings/widget/ChartAxis;->setSize(F)Z

    iget-object v3, v0, Lcom/android/settings/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    int-to-float v4, v2

    invoke-interface {v3, v4}, Lcom/android/settings/widget/ChartAxis;->setSize(F)Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/widget/ChartView;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, v0, Lcom/android/settings/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    instance-of v9, v7, Lcom/android/settings/widget/ChartNetworkSeriesView;

    if-eqz v9, :cond_0

    iget v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v9, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_0
    instance-of v9, v7, Lcom/android/settings/widget/ChartGridView;

    if-eqz v9, :cond_1

    iget v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v9, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    instance-of v9, v7, Lcom/android/settings/widget/ChartSweepView;

    if-eqz v9, :cond_2

    move-object v9, v7

    check-cast v9, Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v9, v3, v4}, Lcom/android/settings/widget/ChartView;->layoutSweep(Lcom/android/settings/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/ChartView;->mOptimalWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/widget/ChartView;->mOptimalWidth:I

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/settings/widget/ChartView;->mOptimalWidth:I

    int-to-float v1, v1

    int-to-float v2, v0

    iget v3, p0, Lcom/android/settings/widget/ChartView;->mOptimalWidthWeight:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public setOptimalWidth(IF)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/ChartView;->mOptimalWidth:I

    iput p2, p0, Lcom/android/settings/widget/ChartView;->mOptimalWidthWeight:F

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartView;->requestLayout()V

    return-void
.end method

.class public Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "ScrollBarRecyclerView.java"


# instance fields
.field mScrollBar:Landroid/widget/ImageView;

.field mScrollBarDecoratedHeight:I

.field mScrollBarTouchDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->animateShowOrHide(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->getTransY(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->getScrollOffset(I)I

    move-result v0

    return v0
.end method

.method private animateShowOrHide(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->mScrollBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->mScrollBar:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->mScrollBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private getMoveableRange()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->mScrollBarDecoratedHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScrollOffset(I)I
    .locals 3

    int-to-float v0, p1

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->getMoveableRange()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->computeVerticalScrollExtent()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getTransY(F)F
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->getMoveableRange()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    nop

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070680

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->mScrollBarDecoratedHeight:I

    new-instance v0, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView$1;-><init>(Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView$2;-><init>(Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public bindScrollbar(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->mScrollBar:Landroid/widget/ImageView;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/RecyclerView;->onLayout(ZIIII)V

    const-string/jumbo v0, "scrollbar visible=%b"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/sidescreen/applist/view/ScrollBarRecyclerView;->computeVerticalScrollExtent()I

    move-result v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lcom/android/systemui/sidescreen/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

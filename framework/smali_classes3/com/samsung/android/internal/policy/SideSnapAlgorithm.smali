.class public Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
.super Ljava/lang/Object;
.source "SideSnapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;,
        Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    }
.end annotation


# static fields
.field private static final MIN_DISMISS_VELOCITY_DP_PER_SECOND:I = 0x258

.field private static final MIN_FLING_VELOCITY_DP_PER_SECOND:I = 0x190

.field private static final SIDE_SCREEN_RATIO:F = 0.3763f


# instance fields
.field private final mDecorInset:I

.field private mDismissEndTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

.field private mDismissStartTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private final mDividerSize:I

.field private mFirstSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

.field private final mGapBetweenSideScreenStacks:I

.field private final mInsetFrame:Landroid/graphics/Rect;

.field private final mIsHorizontalDivision:Z

.field private mLastSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

.field private mMiddleTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

.field private final mMinDismissVelocityPxPerSecond:F

.field private final mMinFlingVelocityPxPerSecond:F

.field private final mMinimalSizeResizableTask:I

.field private final mMode:I

.field private final mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IILandroid/graphics/Rect;IIZI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mInsetFrame:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iput p8, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mMode:I

    const v0, 0x105035d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mGapBetweenSideScreenStacks:I

    const v0, 0x105008d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mMinimalSizeResizableTask:I

    iput p6, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDividerSize:I

    nop

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    nop

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44160000    # 600.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    iput p2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDisplayWidth:I

    iput p3, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDisplayHeight:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p5, v1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mIsHorizontalDivision:Z

    iget-object v3, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mInsetFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mInsetFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    const v3, 0x105035c

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDecorInset:I

    invoke-direct {p0, p7}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateTargets(Z)V

    iget-object v3, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iput-object v2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDismissStartTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iput-object v2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mFirstSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iput-object v2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mLastSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iput-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDismissEndTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iput-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mMiddleTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mIsHorizontalDivision:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mGapBetweenSideScreenStacks:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mFirstSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mLastSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDismissStartTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDismissEndTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v0
.end method

.method private addMiddleTarget(II)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->getMiddlePosition()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->addTarget(III)V

    return-void
.end method

.method private addTarget(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->addTarget(IIII)V

    return-void
.end method

.method private addTarget(IIII)V
    .locals 8

    iget-object v4, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTmpRect2:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateTargetRect(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget-object v4, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTmpRect2:Landroid/graphics/Rect;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;-><init>(Lcom/samsung/android/internal/policy/SideSnapAlgorithm;ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private calculateTargetRect(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mInsetFrame:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDisplayWidth:I

    iget v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDisplayHeight:I

    const/4 v2, 0x0

    invoke-virtual {p5, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDividerSize:I

    add-int/2addr v0, p2

    iput v0, p4, Landroid/graphics/Rect;->top:I

    iput p3, p4, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mInsetFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mInsetFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p5, v0, p1, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDividerSize:I

    add-int/2addr v0, p2

    iput v0, p4, Landroid/graphics/Rect;->left:I

    iput p3, p4, Landroid/graphics/Rect;->right:I

    iput p1, p5, Landroid/graphics/Rect;->left:I

    iput p2, p5, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mInsetFrame:Landroid/graphics/Rect;

    invoke-virtual {p5, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDecorInset:I

    iget v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDecorInset:I

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private calculateTargets(Z)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDisplayHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDisplayWidth:I

    :goto_0
    int-to-float v0, v0

    const v1, 0x3ec0aa65    # 0.3763f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDisplayHeight:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDisplayWidth:I

    :goto_1
    iget v3, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDividerSize:I

    sub-int v3, v1, v3

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDividerSize:I

    sub-int v4, v1, v4

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->addTarget(IIII)V

    if-nez p1, :cond_2

    add-int v3, v1, v0

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->addTarget(III)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->addMiddleTarget(II)V

    :cond_2
    sub-int v3, v2, v0

    iget v4, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v1, v3, v2}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->addTarget(III)V

    add-int v3, v2, v0

    iget v4, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDividerSize:I

    add-int/2addr v3, v4

    invoke-direct {p0, v1, v2, v3, v5}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->addTarget(IIII)V

    return-void
.end method

.method private getMiddlePosition()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDisplayHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDisplayWidth:I

    :goto_0
    iget v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private maybeAddTarget(III)V
    .locals 3

    sub-int v0, p2, p1

    sub-int v1, p3, p2

    iget v2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mMinimalSizeResizableTask:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->addTarget(III)V

    :cond_0
    return-void
.end method

.method private snap(IZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 7

    const/4 v0, -0x1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget v5, v4, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    if-eqz p2, :cond_0

    iget v6, v4, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->distanceMultiplier:F

    div-float/2addr v5, v6

    :cond_0
    cmpg-float v6, v5, v1

    if-gez v6, :cond_1

    move v0, v3

    move v1, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v3
.end method


# virtual methods
.method public calculateDismissingFraction(I)F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mFirstSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget v0, v0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    if-ge p1, v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p1

    iget-object v2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mFirstSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget v2, v2, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mLastSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget v0, v0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mLastSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget v0, v0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDismissEndTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget v1, v1, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    iget-object v2, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mLastSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget v2, v2, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public calculateNonDismissingSnapTarget(I)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->snap(IZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDismissStartTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mFirstSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDismissEndTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mLastSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v1

    :cond_1
    return-object v0
.end method

.method public calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mLastSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget v0, v0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDismissEndTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mFirstSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    iget v0, v0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;->position:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDismissStartTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v0

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->snap(IZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mFirstSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mLastSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v0
.end method

.method public calculateSnapTarget(Landroid/graphics/Rect;)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mIsHorizontalDivision:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    move-result-object v0

    return-object v0
.end method

.method public getDismissEndSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDismissEndTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v0
.end method

.method public getDismissStartTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mDismissStartTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v0
.end method

.method public getFirstSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mFirstSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v0
.end method

.method public getLastSideTarget()Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;->mLastSideTarget:Lcom/samsung/android/internal/policy/SideSnapAlgorithm$SideSnapTarget;

    return-object v0
.end method

.class public Landroid/support/design/internal/SeslTabDotLineIndicator;
.super Landroid/support/design/internal/SeslAbsIndicatorView;
.source "SeslTabDotLineIndicator.java"


# instance fields
.field private mDiameter:I

.field private mInterval:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPressAnimationSet:Landroid/view/animation/AnimationSet;

.field private mReleaseAnimationSet:Landroid/view/animation/AnimationSet;

.field private mScaleFrom:F

.field private final mScaleFromDiff:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/design/internal/SeslAbsIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mInterval:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mInterval:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mScaleFromDiff:F

    return-void
.end method

.method static synthetic access$002(Landroid/support/design/internal/SeslTabDotLineIndicator;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p1
.end method

.method private updateDotLineScaleFrom()V
    .locals 2

    iget v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mWidth:I

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mWidth:I

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mWidth:I

    iget v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mWidth:I

    if-gtz v0, :cond_1

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mScaleFrom:F

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mScaleFromDiff:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mScaleFrom:F

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/support/design/internal/SeslAbsIndicatorView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct/range {p0 .. p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->updateDotLineScaleFrom()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    sub-int v3, v1, v3

    iget v4, v0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mInterval:I

    iget v5, v0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v4, v3

    add-int/lit8 v3, v4, -0x1

    iget v5, v0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    sub-int v5, v1, v5

    iget v6, v0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mInterval:I

    iget v7, v0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    add-int/2addr v6, v7

    add-int/lit8 v7, v4, -0x1

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget v6, v0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-lez v3, :cond_2

    div-int v8, v5, v3

    rem-int v9, v5, v3

    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v4, :cond_0

    add-int v12, v6, v10

    int-to-float v12, v12

    div-int/lit8 v13, v2, 0x2

    int-to-float v13, v13

    iget v14, v0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    int-to-float v14, v14

    div-float/2addr v14, v7

    iget-object v15, v0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v12, v0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mDiameter:I

    iget v13, v0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mInterval:I

    add-int/2addr v12, v13

    add-int/2addr v12, v8

    add-int/2addr v10, v12

    if-ge v11, v9, :cond_3

    add-int/lit8 v10, v10, 0x1

    :cond_3
    add-int/lit8 v11, v11, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_1

    :goto_2
    return-void
.end method

.method onHide()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method onPressed()V
    .locals 12

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/support/design/internal/SeslTabDotLineIndicator$1;

    invoke-direct {v2, p0}, Landroid/support/design/internal/SeslTabDotLineIndicator$1;-><init>(Landroid/support/design/internal/SeslTabDotLineIndicator;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mScaleFrom:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    iget-object v4, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->isSelected()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v4, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v1}, Landroid/support/design/internal/SeslTabDotLineIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method onReleased()V
    .locals 11

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mReleaseAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mReleaseAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v3, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mScaleFrom:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroid/support/design/widget/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mReleaseAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mReleaseAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v1}, Landroid/support/design/internal/SeslTabDotLineIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method onSetSelectedIndicatorColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method onShow()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->onReleased()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->onReleased()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHideImmediatly()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

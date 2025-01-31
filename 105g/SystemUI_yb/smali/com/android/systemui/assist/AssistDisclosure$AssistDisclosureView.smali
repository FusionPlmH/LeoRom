.class Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;
.super Landroid/view/View;
.source "AssistDisclosure.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistDisclosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssistDisclosureView"
.end annotation


# instance fields
.field private mAlpha:I

.field private final mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaOutAnimator:Landroid/animation/ValueAnimator;

.field private final mAnimator:Landroid/animation/AnimatorSet;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mRadius:F

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private mShadowThickness:F

.field private mThickness:F

.field final synthetic this$0:Lcom/android/systemui/assist/AssistDisclosure;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistDisclosure;Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->this$0:Lcom/android/systemui/assist/AssistDisclosure;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    const/4 v0, 0x2

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView$1;-><init>(Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;Lcom/android/systemui/assist/AssistDisclosure;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07007a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070079

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    sget-boolean v0, Lcom/android/systemui/Rune;->ASSIST_SUPPORT_ASSIST_ROUND_DISCLOSURE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getRadius()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xde
    .end array-data

    :array_1
    .array-data 4
        0xde
        0x0
    .end array-data
.end method

.method private drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V
    .locals 6

    sub-float v1, p2, p7

    sub-float v2, p3, p7

    add-float v3, p4, p7

    add-float v4, p5, p7

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getHeight()I

    move-result v1

    iget v10, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mThickness:F

    int-to-float v2, v1

    sub-float v5, v2, v10

    int-to-float v6, v0

    int-to-float v7, v1

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    int-to-float v2, v1

    sub-float v7, v2, v10

    const/4 v5, 0x0

    move-object v2, p0

    move v6, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    int-to-float v2, v0

    sub-float v4, v2, v10

    int-to-float v6, v0

    int-to-float v2, v1

    sub-float v7, v2, v10

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    int-to-float v2, v0

    sub-float v6, v2, v10

    move-object v2, p0

    move v4, v10

    move v7, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawBeam(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;F)V

    return-void
.end method

.method private getRadius()F
    .locals 2

    sget v0, Lcom/android/systemui/Rune;->STATBAR_CONFIG_DEVICE_CORNER_ROUND:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private startAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->startAnimation()V

    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mAlpha:I

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-boolean v2, Lcom/android/systemui/Rune;->ASSIST_SUPPORT_ASSIST_ROUND_DISCLOSURE:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->getHeight()I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v6, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v7, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v5, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v10, v5, v6

    iget v5, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    mul-float v11, v5, v6

    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v13, 0x42b40000    # 90.0f

    const/4 v14, 0x1

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v5, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    int-to-float v7, v2

    iget v8, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    sub-float/2addr v7, v8

    invoke-virtual {v5, v7, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    int-to-float v5, v2

    iget v7, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    mul-float/2addr v7, v6

    sub-float v9, v5, v7

    const/4 v10, 0x0

    int-to-float v11, v2

    iget v5, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    mul-float v12, v5, v6

    const/high16 v13, -0x3d4c0000    # -90.0f

    const/high16 v14, 0x42b40000    # 90.0f

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v5, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    int-to-float v7, v2

    int-to-float v8, v4

    iget v9, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    sub-float/2addr v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v9, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    int-to-float v5, v2

    iget v7, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    mul-float/2addr v7, v6

    sub-float v10, v5, v7

    int-to-float v5, v4

    iget v7, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    mul-float/2addr v7, v6

    sub-float v11, v5, v7

    int-to-float v12, v2

    int-to-float v13, v4

    const/4 v14, 0x0

    const/high16 v15, 0x42b40000    # 90.0f

    const/16 v16, 0x1

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v5, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v7, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    int-to-float v8, v4

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v9, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    const/4 v10, 0x0

    int-to-float v5, v4

    iget v7, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    mul-float/2addr v7, v6

    sub-float v11, v5, v7

    iget v5, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    mul-float v12, v5, v6

    int-to-float v13, v4

    const/high16 v14, 0x42b40000    # 90.0f

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v5, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget v6, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mRadius:F

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mShadowThickness:F

    invoke-direct {v0, v1, v2, v4}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    iget-object v2, v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;->drawGeometry(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    :goto_0
    return-void
.end method

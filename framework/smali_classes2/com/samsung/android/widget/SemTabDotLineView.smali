.class public Lcom/samsung/android/widget/SemTabDotLineView;
.super Landroid/view/View;
.source "SemTabDotLineView.java"


# static fields
.field private static final CIRCLE_INTERVAL:F = 2.5f

.field private static final DIAMETER_SIZE:F = 2.5f

.field private static final SEM_TAB_ANIM_DOTLINE_SCALE_DIFF:I = 0x5

.field protected static SEM_TAB_ANIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator; = null

.field private static final SEM_TAB_ANIM_PRESS_DURATION:I = 0x32

.field private static final SEM_TAB_ANIM_RELEASE_DURATION:I = 0x12c


# instance fields
.field private mDiameter:I

.field public mDrawDot:Z

.field private mInterval:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScaleFrom:F

.field private final mScaleFromDiff:F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/widget/SemTabDotLineView;->SEM_TAB_ANIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemTabDotLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mInterval:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mInterval:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10601ad

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v0, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mScaleFromDiff:F

    return-void
.end method

.method private updateDotLineScaleFrom()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mWidth:I

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mWidth:I

    iget v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mWidth:I

    if-gtz v0, :cond_1

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mScaleFrom:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mScaleFromDiff:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mScaleFrom:F

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->updateDotLineScaleFrom()V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mInterval:I

    iget v4, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v3, v2

    iget v2, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    sub-int v2, v0, v2

    iget v4, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mInterval:I

    iget v5, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, -0x1

    mul-int/2addr v4, v5

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_2

    add-int v8, v4, v6

    int-to-float v8, v8

    int-to-float v9, v1

    div-float/2addr v9, v5

    iget v10, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    int-to-float v10, v10

    div-float/2addr v10, v5

    iget-object v11, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v8, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    iget v9, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mInterval:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    if-lez v2, :cond_1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPressed()V
    .locals 14

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v13, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mScaleFrom:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v4, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    sget-object v5, Lcom/samsung/android/widget/SemTabDotLineView;->SEM_TAB_ANIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->isSelected()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v5, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v5, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    sget-object v1, Lcom/samsung/android/widget/SemTabDotLineView;->SEM_TAB_ANIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTabDotLineView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onReleased()V
    .locals 12

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    iget v3, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mScaleFrom:F

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    sget-object v3, Lcom/samsung/android/widget/SemTabDotLineView;->SEM_TAB_ANIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTabDotLineView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setDrawState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->onPressed()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->onReleased()V

    :goto_0
    return-void
.end method

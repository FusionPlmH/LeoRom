.class public Landroid/support/v4/widget/SeslEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SeslEdgeEffect.java"


# static fields
.field private static final ATTRS:[I

.field private static final COS:F

.field private static final SIN:F


# instance fields
.field private SESL_MAX_ALPHA:F

.field private SESL_MAX_SCALE:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDuration:F

.field private mEdgeControlPointHeight:F

.field private mEdgePadding:F

.field private mForceCallOnRelease:Ljava/lang/Runnable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHandler:Landroid/os/Handler;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mOnReleaseCalled:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPullDistance:F

.field private mSeslHostView:Landroid/view/View;

.field private mStartTime:J

.field private mState:I

.field private final mTabHeight:F

.field private final mTabHeightBuffer:F

.field private mTargetDisplacement:F

.field private mTempDeltaDistance:F

.field private mTempDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Landroid/support/v4/widget/SeslEdgeEffect;->SIN:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/support/v4/widget/SeslEdgeEffect;->COS:F

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10104ce

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/SeslEdgeEffect;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    iput-boolean v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDisplacement:F

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTargetDisplacement:F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    new-instance v1, Landroid/support/v4/widget/SeslEdgeEffect$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/support/v4/widget/SeslEdgeEffect$1;-><init>(Landroid/support/v4/widget/SeslEdgeEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/widget/SeslEdgeEffect$2;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SeslEdgeEffect$2;-><init>(Landroid/support/v4/widget/SeslEdgeEffect;)V

    iput-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    iget-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Landroid/support/v4/widget/SeslEdgeEffect;->ATTRS:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const v2, -0x99999a

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const v3, 0xffffff

    and-int/2addr v3, v0

    const/high16 v4, 0x33000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/high16 v2, 0x42aa0000    # 85.0f

    invoke-direct {p0, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTabHeight:F

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {p0, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTabHeightBuffer:F

    return-void
.end method

.method static synthetic access$002(Landroid/support/v4/widget/SeslEdgeEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SeslEdgeEffect;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTempDeltaDistance:F

    return v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SeslEdgeEffect;)F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTempDisplacement:F

    return v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SeslEdgeEffect;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dipToPixels(F)F
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private isEdgeEffectRunning()Z
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private update()V
    .locals 9

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    iget v6, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlpha:F

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    iget v5, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDisplacement:F

    iget v5, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTargetDisplacement:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDisplacement:F

    const v4, 0x3f7fbe77    # 0.999f

    cmpl-float v4, v2, v4

    if-gez v4, :cond_0

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    :cond_0
    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v7, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 v4, 0x43e10000    # 450.0f

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    iput v8, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    iput v8, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_1
    iput v6, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    iput v8, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_2
    iput v7, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    goto :goto_0

    :pswitch_3
    iput v5, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    goto :goto_0

    :pswitch_4
    iput v6, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    iput v8, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_5
    const/4 v4, 0x5

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 v4, 0x437a0000    # 250.0f

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    iput v8, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    iput v8, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    iput v8, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    iput-boolean v5, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    nop

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SeslEdgeEffect;->update()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v4, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mDisplacement:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    move v7, v3

    iget v8, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgeControlPointHeight:F

    iget v9, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgePadding:F

    add-float/2addr v8, v9

    iget-object v9, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v10

    iget-object v10, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    iget-object v10, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    iget v11, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgePadding:F

    invoke-virtual {v10, v6, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    sub-float v11, v7, v9

    add-float v13, v7, v9

    iget-object v12, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v15, v12

    iget v14, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgePadding:F

    move v12, v8

    move/from16 v16, v14

    move v14, v8

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v10, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    iget-object v11, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    iget-object v10, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    iget v11, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlpha:F

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v12, v11

    float-to-int v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v10, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mPath:Landroid/graphics/Path;

    iget-object v11, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v10, 0x0

    iget v11, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v12, 0x0

    const/4 v13, 0x3

    if-ne v11, v13, :cond_0

    iget v11, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    cmpl-float v6, v11, v6

    if-nez v6, :cond_0

    iput v12, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v10, 0x1

    :cond_0
    iget v6, v0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    if-nez v6, :cond_2

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v12, 0x1

    :goto_1
    return v12
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    return-void
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 4

    invoke-direct {p0}, Landroid/support/v4/widget/SeslEdgeEffect;->isEdgeEffectRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    const/16 v1, 0x1c

    invoke-static {v1}, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    const/4 v1, 0x2

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/16 v1, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x2710

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 v1, 0x437a0000    # 250.0f

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    iget v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_SCALE:F

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    iget v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->SESL_MAX_ALPHA:F

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTargetDisplacement:F

    iget-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onPull(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/SeslEdgeEffect;->onPull(FF)V

    return-void
.end method

.method public onPull(FF)V
    .locals 6

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPullDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    invoke-direct {p0}, Landroid/support/v4/widget/SeslEdgeEffect;->isEdgeEffectRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPullDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPullDistance:F

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTargetDisplacement:F

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    iget-wide v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v0, v4

    iget v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    :cond_2
    invoke-direct {p0}, Landroid/support/v4/widget/SeslEdgeEffect;->isEdgeEffectRunning()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPullDistance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    if-eqz v0, :cond_4

    const/16 v0, 0x1c

    invoke-static {v0}, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_4
    iput v4, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    iput-wide v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 v0, 0x43270000    # 167.0f

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    iget v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPullDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPullDistance:F

    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public onPullCallOnRelease(FFI)V
    .locals 4

    iput p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTempDeltaDistance:F

    iput p2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTempDisplacement:F

    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onRelease()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPullDistance:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mOnReleaseCalled:Z

    iget v2, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    if-eq v2, v1, :cond_0

    iget v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mState:I

    iget v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlpha:F

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaStart:F

    iget v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleY:F

    iput v1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYStart:F

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowAlphaFinish:F

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mGlowScaleYFinish:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mStartTime:J

    const/high16 v0, 0x43e10000    # 450.0f

    iput v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mDuration:F

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSeslHostView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mSeslHostView:Landroid/view/View;

    return-void
.end method

.method public setSize(II)V
    .locals 10

    int-to-float v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    sget v2, Landroid/support/v4/widget/SeslEdgeEffect;->SIN:F

    div-float/2addr v0, v2

    sget v2, Landroid/support/v4/widget/SeslEdgeEffect;->COS:F

    mul-float/2addr v2, v0

    sub-float v3, v0, v2

    int-to-float v4, p2

    mul-float/2addr v4, v1

    sget v1, Landroid/support/v4/widget/SeslEdgeEffect;->SIN:F

    div-float/2addr v4, v1

    sget v1, Landroid/support/v4/widget/SeslEdgeEffect;->COS:F

    mul-float/2addr v1, v4

    sub-float v5, v4, v1

    int-to-float v6, p1

    iget v7, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTabHeight:F

    iget v8, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mTabHeightBuffer:F

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {p0, v6}, Landroid/support/v4/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v6

    iput v6, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgePadding:F

    const/high16 v6, 0x41980000    # 19.0f

    invoke-direct {p0, v6}, Landroid/support/v4/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v6

    iput v6, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgeControlPointHeight:F

    goto :goto_0

    :cond_0
    const/high16 v6, 0x40a00000    # 5.0f

    invoke-direct {p0, v6}, Landroid/support/v4/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v6

    iput v6, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgePadding:F

    const/high16 v6, 0x41e80000    # 29.0f

    invoke-direct {p0, v6}, Landroid/support/v4/widget/SeslEdgeEffect;->dipToPixels(F)F

    move-result v6

    iput v6, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mEdgeControlPointHeight:F

    :goto_0
    iget-object v6, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/support/v4/widget/SeslEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, p2

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v6, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

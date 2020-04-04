.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# static fields
.field private static final ANGLE:D = 0.5235987755982988

.field private static final COS:F

.field private static final EDGE_CONTROL_POINT_HEIGHT_NON_TAB_IN_DIP:F = 29.0f

.field private static final EDGE_CONTROL_POINT_HEIGHT_TAB_IN_DIP:F = 19.0f

.field private static final EDGE_PADDING_NON_TAB_IN_DIP:F = 5.0f

.field private static final EDGE_PADDING_TAB_IN_DIP:F = 3.0f

.field private static final EPSILON:F = 0.001f

.field private static final GLOW_ALPHA_START:F = 0.09f

.field private static final MAX_ALPHA:F = 0.15f

.field private static final MAX_GLOW_SCALE:F = 2.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final MSG_CALL_ONRELEASE:I = 0x1

.field private static final PULL_DECAY_TIME:I = 0x7d0

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final PULL_GLOW_BEGIN:F = 0.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RADIUS_FACTOR:F = 0.6f

.field private static final RECEDE_TIME:I = 0x258

.field private static final SEM_APPEAR_TIME:I = 0xfa

.field private static final SEM_KEEP_TIME:I = 0x0

.field private static final SEM_RECEDE_TIME:I = 0x1c2

.field private static final SEM_STATE_APPEAR:I = 0x5

.field private static final SEM_STATE_KEEP:I = 0x6

.field private static final SIN:F

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAB_HEIGHT_BUFFER_IN_DIP:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_GLOW_FACTOR:I = 0x6


# instance fields
.field private SEM_MAX_ALPHA:F

.field private SEM_MAX_SCALE:F

.field private mBaseGlowScale:F

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

.field private mHostView:Landroid/view/View;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDeviceDefault:Z

.field private mOnReleaseCalled:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPullDistance:F

.field private mRadius:F

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

    sput v2, Landroid/widget/EdgeEffect;->SIN:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/widget/EdgeEffect;->COS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    iput-boolean v0, p0, Landroid/widget/EdgeEffect;->mOnReleaseCalled:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/EdgeEffect;->SEM_MAX_SCALE:F

    const v1, 0x3e19999a    # 0.15f

    iput v1, p0, Landroid/widget/EdgeEffect;->SEM_MAX_ALPHA:F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    iput-boolean v0, p0, Landroid/widget/EdgeEffect;->mIsDeviceDefault:Z

    new-instance v1, Landroid/widget/EdgeEffect$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/widget/EdgeEffect$1;-><init>(Landroid/widget/EdgeEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/widget/EdgeEffect$2;

    invoke-direct {v1, p0}, Landroid/widget/EdgeEffect$2;-><init>(Landroid/widget/EdgeEffect;)V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x111008d

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Landroid/widget/EdgeEffect;->mIsDeviceDefault:Z

    :cond_0
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const v3, -0x99999a

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v3, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const v4, 0xffffff

    and-int/2addr v4, v0

    const/high16 v5, 0x33000000

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/EdgeEffect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/high16 v3, 0x42aa0000    # 85.0f

    invoke-direct {p0, v3}, Landroid/widget/EdgeEffect;->dipToPixels(F)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mTabHeight:F

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {p0, v3}, Landroid/widget/EdgeEffect;->dipToPixels(F)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mTabHeightBuffer:F

    return-void
.end method

.method static synthetic access$002(Landroid/widget/EdgeEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/EdgeEffect;->mOnReleaseCalled:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/EdgeEffect;)F
    .locals 1

    iget v0, p0, Landroid/widget/EdgeEffect;->mTempDeltaDistance:F

    return v0
.end method

.method static synthetic access$200(Landroid/widget/EdgeEffect;)F
    .locals 1

    iget v0, p0, Landroid/widget/EdgeEffect;->mTempDisplacement:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/EdgeEffect;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dipToPixels(F)F
    .locals 2

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private isEdgeEffectRunning()Z
    .locals 2

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

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

    iget-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iget-boolean v4, p0, Landroid/widget/EdgeEffect;->mIsDeviceDefault:Z

    const v5, 0x3f7fbe77    # 0.999f

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v4, :cond_1

    cmpl-float v4, v2, v5

    if-gez v4, :cond_0

    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    :cond_0
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x6

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v7, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x43e10000    # 450.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_1
    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    iput v8, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->SEM_MAX_ALPHA:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Landroid/widget/EdgeEffect;->SEM_MAX_SCALE:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_2
    iput v7, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    :pswitch_3
    iput v6, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    :pswitch_4
    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    iput v8, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->SEM_MAX_ALPHA:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Landroid/widget/EdgeEffect;->SEM_MAX_SCALE:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_5
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x437a0000    # 250.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->SEM_MAX_ALPHA:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Landroid/widget/EdgeEffect;->SEM_MAX_SCALE:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput-boolean v6, p0, Landroid/widget/EdgeEffect;->mOnReleaseCalled:Z

    nop

    :goto_0
    goto :goto_1

    :cond_1
    cmpl-float v4, v2, v5

    if-ltz v4, :cond_2

    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    packed-switch v4, :pswitch_data_1

    goto :goto_1

    :pswitch_6
    iput v7, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_1

    :pswitch_7
    iput v6, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_1

    :pswitch_8
    iput v7, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x44160000    # 600.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_1

    :pswitch_9
    const/4 v4, 0x4

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x44fa0000    # 2000.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v8, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    nop

    :cond_2
    :goto_1
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/widget/EdgeEffect;->update()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/widget/EdgeEffect;->mRadius:F

    sub-float/2addr v4, v5

    iget-boolean v5, v0, Landroid/widget/EdgeEffect;->mIsDeviceDefault:Z

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    iget v5, v0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v1, v7, v5, v3, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    move v5, v3

    iget v7, v0, Landroid/widget/EdgeEffect;->mEdgeControlPointHeight:F

    iget v9, v0, Landroid/widget/EdgeEffect;->mEdgePadding:F

    add-float/2addr v7, v9

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v10

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    iget v11, v0, Landroid/widget/EdgeEffect;->mEdgePadding:F

    invoke-virtual {v10, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    sub-float v11, v5, v9

    add-float v13, v5, v9

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v15, v12

    iget v14, v0, Landroid/widget/EdgeEffect;->mEdgePadding:F

    move v12, v7

    move/from16 v16, v14

    move v14, v7

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    iget-object v11, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    iget v11, v0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    mul-float/2addr v6, v11

    float-to-int v6, v6

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_0
    iget v5, v0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v9, v0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    mul-float/2addr v5, v9

    invoke-virtual {v1, v7, v5, v3, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v5, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v5, v7

    iget-object v7, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    iget v10, v0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v6, v0, Landroid/widget/EdgeEffect;->mRadius:F

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v6, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_0
    const/4 v5, 0x0

    iget v6, v0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v7, 0x3

    const/4 v9, 0x0

    if-ne v6, v7, :cond_1

    iget v6, v0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_1

    iput v9, v0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x1

    :cond_1
    iget v6, v0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v6, :cond_3

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    const/4 v9, 0x1

    :goto_2
    return v9
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    return-void
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

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

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 7

    iget-boolean v0, p0, Landroid/widget/EdgeEffect;->mIsDeviceDefault:Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/16 v2, 0x2710

    const/4 v3, 0x2

    const/16 v4, 0x1c

    const/4 v5, 0x0

    const/16 v6, 0x64

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->isEdgeEffectRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mHostView:Landroid/view/View;

    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/EdgeEffect;->mOnReleaseCalled:Z

    iput v3, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v2, 0x437a0000    # 250.0f

    iput v2, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v2, p0, Landroid/widget/EdgeEffect;->SEM_MAX_SCALE:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v2, p0, Landroid/widget/EdgeEffect;->SEM_MAX_ALPHA:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    iget-object v1, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iput v3, p0, Landroid/widget/EdgeEffect;->mState:I

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mHostView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mHostView:Landroid/view/View;

    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    int-to-float v0, p1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, v2

    const v2, 0x3e19999a    # 0.15f

    add-float/2addr v0, v2

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    const v0, 0x3ccccccd    # 0.025f

    div-int/lit8 v3, p1, 0x64

    mul-int/2addr v3, p1

    int-to-float v3, v3

    const v4, 0x391d4952    # 1.5E-4f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v3, p1, 0x6

    int-to-float v3, v3

    const v4, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    :goto_0
    return-void
.end method

.method public onPull(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return-void
.end method

.method public onPull(FF)V
    .locals 10

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput p2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    iget-boolean v2, p0, Landroid/widget/EdgeEffect;->mIsDeviceDefault:Z

    const/high16 v3, 0x43270000    # 167.0f

    const/16 v4, 0x1c

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/EdgeEffect;->mOnReleaseCalled:Z

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->isEdgeEffectRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v2, p1

    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    :cond_0
    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    if-ne v2, v5, :cond_1

    iget-wide v8, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v8, v0, v8

    long-to-float v2, v8

    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    return-void

    :cond_1
    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eq v2, v6, :cond_2

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    :cond_2
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->isEdgeEffectRunning()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/EdgeEffect;->mOnReleaseCalled:Z

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mHostView:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mHostView:Landroid/view/View;

    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_4
    iput v6, p0, Landroid/widget/EdgeEffect;->mState:I

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    iput v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v2, p1

    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    goto/16 :goto_2

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    if-ne v2, v5, :cond_7

    iget-wide v8, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v8, v0, v8

    long-to-float v2, v8

    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_7

    return-void

    :cond_7
    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eq v2, v6, :cond_8

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mHostView:Landroid/view/View;

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_8

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mHostView:Landroid/view/View;

    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_8
    iput v6, p0, Landroid/widget/EdgeEffect;->mState:I

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    iput v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v2, p1

    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3e19999a    # 0.15f

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_9

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    goto :goto_1

    :cond_9
    const-wide/16 v3, 0x0

    iget v5, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v5, v7, v5

    sub-double/2addr v7, v5

    const-wide v5, 0x3fd3333333333333L    # 0.3

    sub-double/2addr v7, v5

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    const-wide v5, 0x3fe6666666666666L    # 0.7

    div-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    :goto_1
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    :goto_2
    return-void
.end method

.method public onPullCallOnRelease(FFI)V
    .locals 4

    iput p1, p0, Landroid/widget/EdgeEffect;->mTempDeltaDistance:F

    iput p2, p0, Landroid/widget/EdgeEffect;->mTempDisplacement:F

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/EdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onRelease()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/EdgeEffect;->mOnReleaseCalled:Z

    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eq v2, v1, :cond_0

    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    iget-boolean v0, p0, Landroid/widget/EdgeEffect;->mIsDeviceDefault:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x43e10000    # 450.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    :goto_0
    return-void
.end method

.method public semSetHostView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/EdgeEffect;->mHostView:Landroid/view/View;

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSize(II)V
    .locals 10

    int-to-float v0, p1

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    sget v2, Landroid/widget/EdgeEffect;->SIN:F

    div-float/2addr v0, v2

    sget v2, Landroid/widget/EdgeEffect;->COS:F

    mul-float/2addr v2, v0

    sub-float v3, v0, v2

    int-to-float v4, p2

    mul-float/2addr v4, v1

    sget v1, Landroid/widget/EdgeEffect;->SIN:F

    div-float/2addr v4, v1

    sget v1, Landroid/widget/EdgeEffect;->COS:F

    mul-float/2addr v1, v4

    sub-float v5, v4, v1

    iget-boolean v6, p0, Landroid/widget/EdgeEffect;->mIsDeviceDefault:Z

    if-eqz v6, :cond_1

    int-to-float v6, p1

    iget v7, p0, Landroid/widget/EdgeEffect;->mTabHeight:F

    iget v8, p0, Landroid/widget/EdgeEffect;->mTabHeightBuffer:F

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {p0, v6}, Landroid/widget/EdgeEffect;->dipToPixels(F)F

    move-result v6

    iput v6, p0, Landroid/widget/EdgeEffect;->mEdgePadding:F

    const/high16 v6, 0x41980000    # 19.0f

    invoke-direct {p0, v6}, Landroid/widget/EdgeEffect;->dipToPixels(F)F

    move-result v6

    iput v6, p0, Landroid/widget/EdgeEffect;->mEdgeControlPointHeight:F

    goto :goto_0

    :cond_0
    const/high16 v6, 0x40a00000    # 5.0f

    invoke-direct {p0, v6}, Landroid/widget/EdgeEffect;->dipToPixels(F)F

    move-result v6

    iput v6, p0, Landroid/widget/EdgeEffect;->mEdgePadding:F

    const/high16 v6, 0x41e80000    # 29.0f

    invoke-direct {p0, v6}, Landroid/widget/EdgeEffect;->dipToPixels(F)F

    move-result v6

    iput v6, p0, Landroid/widget/EdgeEffect;->mEdgeControlPointHeight:F

    goto :goto_0

    :cond_1
    iput v0, p0, Landroid/widget/EdgeEffect;->mRadius:F

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v6, :cond_2

    div-float v6, v5, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    nop

    :cond_2
    iput v7, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    :goto_0
    iget-object v6, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, p2

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v6, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

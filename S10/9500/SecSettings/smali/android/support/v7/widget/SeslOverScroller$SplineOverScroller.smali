.class Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "SeslOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static DECELERATION_RATE:F

.field private static INFLEXION:F

.field private static final INFLEXIONS:[F

.field private static SPLINE_POSITION:[F

.field private static final SPLINE_POSITIONS:[[F

.field private static SPLINE_TIME:[F

.field private static final SPLINE_TIMES:[[F

.field private static sEnableSmoothFling:Z

.field private static sRegulateCurrentTimeInterval:Z


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mIsDVFSBoosting:Z

.field private mMaximumVelocity:I

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mPrevTime:J

.field private mPrevTimeGap:J

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mUpdateCount:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    sget-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sput v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXION:F

    const/16 v1, 0x65

    filled-new-array {v0, v1}, [I

    move-result-object v3

    const-class v4, F

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    sput-object v3, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    filled-new-array {v0, v1}, [I

    move-result-object v1

    const-class v3, F

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    sput-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    sget-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v1, v1, v2

    sput-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v1, v1, v2

    sput-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    sput-boolean v2, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    sput-boolean v2, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    sget-object v3, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v3, v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sget-object v5, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v5, v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    mul-float/2addr v5, v6

    sub-float v5, v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v8

    move v8, v7

    const/4 v7, 0x0

    :goto_1
    const/16 v10, 0x64

    if-ge v7, v10, :cond_4

    int-to-float v10, v7

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v11, v10, v11

    move v10, v8

    move v8, v6

    :goto_2
    sub-float v12, v8, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v10

    const/high16 v14, 0x40400000    # 3.0f

    mul-float v15, v14, v12

    sub-float v16, v6, v12

    mul-float v15, v15, v16

    sub-float v16, v6, v12

    mul-float v16, v16, v3

    mul-float v17, v12, v5

    add-float v16, v16, v17

    mul-float v16, v16, v15

    mul-float v17, v12, v12

    mul-float v17, v17, v12

    add-float v16, v16, v17

    sub-float v0, v16, v11

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v13, v0

    const-wide v20, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v13, v20

    if-gez v0, :cond_2

    sget-object v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, v2

    sub-float v13, v6, v12

    mul-float/2addr v13, v4

    add-float/2addr v13, v12

    mul-float/2addr v13, v15

    mul-float v14, v12, v12

    mul-float/2addr v14, v12

    add-float/2addr v13, v14

    aput v13, v0, v7

    move v0, v6

    :goto_3
    sub-float v13, v0, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v13, v9

    const/high16 v17, 0x40400000    # 3.0f

    mul-float v18, v17, v13

    sub-float v19, v6, v13

    mul-float v15, v18, v19

    sub-float v18, v6, v13

    mul-float v18, v18, v4

    add-float v18, v18, v13

    mul-float v18, v18, v15

    mul-float v19, v13, v13

    mul-float v19, v19, v13

    add-float v18, v18, v19

    sub-float v1, v18, v11

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move/from16 v22, v15

    float-to-double v14, v1

    cmpg-double v1, v14, v20

    if-gez v1, :cond_0

    sget-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v1, v1, v2

    sub-float v14, v6, v13

    mul-float/2addr v14, v3

    mul-float v15, v13, v5

    add-float/2addr v14, v15

    mul-float v15, v22, v14

    mul-float v14, v13, v13

    mul-float/2addr v14, v13

    add-float/2addr v15, v14

    aput v15, v1, v7

    add-int/lit8 v7, v7, 0x1

    move v8, v10

    const/4 v0, 0x2

    goto/16 :goto_1

    :cond_0
    cmpl-float v1, v18, v11

    if-lez v1, :cond_1

    move v0, v13

    :goto_4
    move/from16 v15, v22

    goto :goto_3

    :cond_1
    move v9, v13

    goto :goto_4

    :cond_2
    cmpl-float v0, v16, v11

    if-lez v0, :cond_3

    move v8, v12

    :goto_5
    const/4 v0, 0x2

    goto/16 :goto_2

    :cond_3
    move v10, v12

    goto :goto_5

    :cond_4
    sget-object v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, v2

    sget-object v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v1, v1, v2

    aput v6, v1, v10

    aput v6, v0, v10

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x3eb33333    # 0.35f
        0x3e6147ae    # 0.22f
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFlingFriction:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    iput-wide v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d    # 0.84f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPhysicalCoeff:F

    sget-boolean v1, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mMaximumVelocity:I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)F
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method private adjustDuration(III)V
    .locals 10

    sub-int v0, p2, p1

    sub-int v1, p3, p1

    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v3, v2

    float-to-int v4, v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_0

    int-to-float v5, v4

    div-float/2addr v5, v3

    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    div-float/2addr v6, v3

    sget-object v3, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v3, v4

    sget-object v7, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    sub-float v8, v2, v5

    sub-float v9, v6, v5

    div-float/2addr v8, v9

    sub-float v9, v7, v3

    mul-float/2addr v8, v9

    add-float/2addr v8, v3

    iget v9, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 9

    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    int-to-float v1, p3

    int-to-float v2, p3

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    iget v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    sub-int v3, p2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    add-float v4, v2, v3

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v4

    iget v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget-wide v5, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    sub-float v7, v4, v0

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v7

    float-to-int v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    iput p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v5, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1

    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    :goto_0
    return v0
.end method

.method private getSplineDeceleration(I)D
    .locals 3

    sget v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXION:F

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 13

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    sget v2, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    sget-boolean v4, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    if-eqz v4, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mMaximumVelocity:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_0

    const/16 v5, 0x64

    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    sget-object v7, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v7, v7, v5

    sub-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v6

    const/high16 v8, 0x3fc00000    # 1.5f

    add-float/2addr v7, v8

    float-to-double v7, v7

    iget v9, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFlingFriction:F

    float-to-double v9, v9

    mul-double/2addr v9, v7

    iget v11, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPhysicalCoeff:F

    float-to-double v11, v11

    mul-double/2addr v9, v11

    sget v11, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v11, v11

    div-double/2addr v11, v2

    mul-double/2addr v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    return-wide v9

    :cond_1
    iget v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 13

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    sget v2, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    sget-boolean v4, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    const-wide v5, 0x408f400000000000L    # 1000.0

    if-eqz v4, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mMaximumVelocity:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v4

    float-to-int v7, v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_0

    const/16 v7, 0x64

    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    sget-object v9, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v9, v9, v7

    sub-float/2addr v8, v9

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v8

    const v10, 0x3fe66666    # 1.8f

    add-float/2addr v9, v10

    float-to-double v9, v9

    mul-double/2addr v5, v9

    div-double v11, v0, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    mul-double/2addr v5, v11

    double-to-int v5, v5

    return v5

    :cond_1
    div-double v7, v0, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v4, v5

    return v4
.end method

.method private onEdgeReached()V
    .locals 6

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float v1, v0, v1

    iget v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    neg-float v4, v3

    mul-float/2addr v4, v0

    iget v5, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    div-float/2addr v4, v2

    iput v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    int-to-float v1, v2

    :cond_0
    float-to-int v2, v1

    iput v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    const/4 v2, 0x2

    iput v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    if-lez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    neg-float v4, v1

    :goto_0
    float-to-int v4, v4

    add-int/2addr v2, v4

    iput v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    const/high16 v2, 0x447a0000    # 1000.0f

    iget v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    sget-boolean v2, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    :cond_2
    return-void
.end method

.method private startAfterEdge(IIII)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    const/4 v0, 0x1

    move/from16 v10, p2

    if-le v7, v10, :cond_0

    if-ge v7, v8, :cond_0

    const-string v1, "OverScroller"

    const-string/jumbo v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, v6, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    if-le v7, v8, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v11, v2

    if-eqz v11, :cond_2

    move v2, v8

    goto :goto_1

    :cond_2
    move v2, v10

    :goto_1
    move v12, v2

    sub-int v13, v7, v12

    mul-int v2, v13, v9

    if-ltz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    move v14, v0

    if-eqz v14, :cond_4

    invoke-direct {v6, v7, v12, v9}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5

    :cond_4
    invoke-direct {v6, v9}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v15

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    cmpl-double v0, v15, v0

    if-lez v0, :cond_7

    if-eqz v11, :cond_5

    move v3, v10

    goto :goto_3

    :cond_5
    move v3, v7

    :goto_3
    if-eqz v11, :cond_6

    move v4, v7

    goto :goto_4

    :cond_6
    move v4, v8

    :goto_4
    iget v5, v6, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    move-object v0, v6

    move v1, v7

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_5

    :cond_7
    invoke-direct {v6, v7, v12, v9}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startSpringback(III)V

    :goto_5
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .locals 1

    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->onEdgeReached()V

    return-void
.end method

.method private startSpringback(III)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    iput p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    sub-int v0, p1, p2

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    neg-int v1, v0

    iput v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    int-to-double v1, v0

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    mul-double/2addr v3, v1

    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v1, v1

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v1

    double-to-int v1, v3

    iput v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 6

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-wide v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :pswitch_1
    return v1

    :pswitch_2
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    iget-wide v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    invoke-direct {p0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    :cond_0
    return v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->update()Z

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method finish()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/v4/os/SeslPerfManagerReflector;->onSmoothScrollEvent(Z)Z

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method fling(IIIII)V
    .locals 5

    iput p5, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    iput p2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, p2

    iput v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDuration:I

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    if-gt p1, p4, :cond_6

    if-ge p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDuration:I

    iput v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v1

    sget-boolean v3, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    if-nez v3, :cond_2

    const/16 v3, 0x320

    if-ge p2, v3, :cond_1

    const/16 v3, -0x320

    if-gt p2, v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/support/v4/os/SeslPerfManagerReflector;->onSmoothScrollEvent(Z)Z

    iput-boolean v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mIsDVFSBoosting:Z

    :cond_2
    int-to-float v3, p2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDistance:I

    iget v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v3, p1

    iput v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    iget v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    if-ge v3, p3, :cond_3

    iget v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v3, v4, p3}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->adjustDuration(III)V

    iput p3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    :cond_3
    iget v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    if-le v3, p4, :cond_4

    iget v3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v3, v4, p4}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->adjustDuration(III)V

    iput p4, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    :cond_4
    sget-boolean v3, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    if-eqz v3, :cond_5

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    :cond_5
    return-void

    :cond_6
    :goto_0
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    return-void
.end method

.method public setMode(I)V
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    sput-boolean v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    goto :goto_0

    :cond_1
    sput-boolean v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sEnableSmoothFling:Z

    sput-boolean v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    :goto_0
    sget-object v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXIONS:[F

    aget v0, v0, p1

    sput v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->INFLEXION:F

    sget-object v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITIONS:[[F

    aget-object v0, v0, p1

    sput-object v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIMES:[[F

    aget-object v0, v0, p1

    sput-object v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_TIME:[F

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method startScroll(III)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinished:Z

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    add-int v1, p1, p2

    iput v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    iput p3, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method update()Z
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    move-wide v5, v3

    sget-boolean v7, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->sRegulateCurrentTimeInterval:Z

    const/4 v10, 0x1

    if-eqz v7, :cond_4

    iget v7, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    if-nez v7, :cond_4

    iget v7, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    if-lez v7, :cond_0

    iget-wide v11, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    add-long/2addr v11, v3

    const-wide/16 v13, 0x2

    div-long v3, v11, v13

    :cond_0
    iget v7, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    const/16 v11, 0x1e

    if-le v7, v11, :cond_2

    iget-wide v11, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    sub-long v11, v3, v11

    iget-wide v13, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    cmp-long v7, v11, v13

    if-lez v7, :cond_1

    iget-wide v13, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    iget-wide v8, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    add-long/2addr v13, v8

    add-long v3, v13, v15

    goto :goto_0

    :cond_1
    iget-wide v7, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    sub-long/2addr v7, v15

    cmp-long v7, v11, v7

    if-gez v7, :cond_2

    iget-wide v7, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    iget-wide v13, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    add-long/2addr v7, v13

    sub-long v3, v7, v15

    :cond_2
    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-gez v9, :cond_3

    const-wide/16 v3, 0x0

    :cond_3
    iget-wide v7, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    sub-long v7, v3, v7

    iput-wide v7, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTimeGap:J

    iput-wide v3, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mPrevTime:J

    iget v7, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    add-int/2addr v7, v10

    iput v7, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mUpdateCount:I

    :cond_4
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    const/4 v8, 0x0

    if-nez v7, :cond_6

    iget v7, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    if-lez v7, :cond_5

    move v8, v10

    nop

    :cond_5
    return v8

    :cond_6
    iget v7, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    int-to-long v11, v7

    cmp-long v7, v3, v11

    if-lez v7, :cond_7

    return v8

    :cond_7
    const-wide/16 v7, 0x0

    iget v9, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mState:I

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v12, 0x447a0000    # 1000.0f

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    long-to-float v9, v3

    div-float/2addr v9, v12

    iget v12, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v12, v12

    iget v13, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    mul-float/2addr v13, v9

    add-float/2addr v12, v13

    iput v12, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    iget v12, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    iget v13, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDeceleration:F

    mul-float/2addr v13, v9

    mul-float/2addr v13, v9

    div-float/2addr v13, v11

    add-float/2addr v12, v13

    float-to-double v7, v12

    goto :goto_1

    :pswitch_1
    long-to-float v9, v3

    iget v12, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mDuration:I

    int-to-float v12, v12

    div-float/2addr v9, v12

    mul-float v12, v9, v9

    iget v13, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v13, v13

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v13

    iget v14, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    int-to-float v14, v14

    mul-float/2addr v14, v13

    const/high16 v15, 0x40400000    # 3.0f

    mul-float/2addr v15, v12

    mul-float/2addr v11, v9

    mul-float/2addr v11, v12

    sub-float/2addr v15, v11

    mul-float/2addr v14, v15

    float-to-double v7, v14

    iget v11, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mOver:I

    int-to-float v11, v11

    mul-float/2addr v11, v13

    const/high16 v14, 0x40c00000    # 6.0f

    mul-float/2addr v11, v14

    neg-float v14, v9

    add-float/2addr v14, v12

    mul-float/2addr v11, v14

    iput v11, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    goto :goto_1

    :pswitch_2
    long-to-float v9, v3

    iget v11, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v11, v11

    div-float/2addr v9, v11

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float v13, v11, v9

    float-to-int v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v10, 0x64

    if-ge v13, v10, :cond_8

    int-to-float v10, v13

    div-float/2addr v10, v11

    add-int/lit8 v12, v13, 0x1

    int-to-float v12, v12

    div-float/2addr v12, v11

    sget-object v11, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v11, v11, v13

    sget-object v16, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v17, v13, 0x1

    aget v16, v16, v17

    sub-float v17, v16, v11

    sub-float v18, v12, v10

    div-float v15, v17, v18

    sub-float v17, v9, v10

    mul-float v17, v17, v15

    add-float v14, v11, v17

    :cond_8
    iget v10, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v10, v10

    mul-float/2addr v10, v14

    float-to-double v7, v10

    iget v10, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v10, v10

    mul-float/2addr v10, v15

    iget v11, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float/2addr v10, v11

    iput v10, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrVelocity:F

    nop

    :goto_1
    iget v9, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, v0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v9, 0x1

    return v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3

    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->mCurrentPosition:I

    return-void
.end method

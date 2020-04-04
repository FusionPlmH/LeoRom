.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;
.super Landroid/widget/FrameLayout;
.source "Finger.java"


# instance fields
.field private final ANIMATION_OFF_DURATION:J

.field private final TAG:Ljava/lang/String;

.field private alphaAnimator:Landroid/animation/ValueAnimator;

.field private alphaValue:F

.field private context:Landroid/content/Context;

.field private fingerBgColor:I

.field private fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

.field private greyColor:I

.field private height:I

.field private inverseFinger:Landroid/widget/ImageView;

.field private inverseFingerResID:I

.field private mCount80:I

.field private mCurrentPercent:F

.field private mEnrollType:I

.field private mIndexDisplay:[Z

.field private mIsFourGuides:Z

.field private mPercent:F

.field private mPercentAnimator:Landroid/animation/ValueAnimator;

.field private mPreviousPercent:F

.field private mTargetPercent:F

.field private mUiVersion:I

.field private mVersion:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIII)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "FingerScanEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->ANIMATION_OFF_DURATION:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    const/16 v0, 0x2d

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIndexDisplay:[Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mVersion:I

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mUiVersion:I

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCurrentPercent:F

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mTargetPercent:F

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPreviousPercent:F

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsFourGuides:Z

    iput p7, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mVersion:I

    div-int/lit8 v1, p7, 0xa

    rem-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mUiVersion:I

    rem-int/lit8 v1, p7, 0xa

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iput p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    iput p4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerBgColor:I

    iput p5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->greyColor:I

    iput p6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFingerResID:I

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setLayout()V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setAnimator()V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setPercentAnimator()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setLayoutDirection(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCurrentPercent:F

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCurrentPercent:F

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPreviousPercent:F

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mTargetPercent:F

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->showProgressVI(F)V

    return-void
.end method

.method private cancelAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method private setAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setImageView(Landroid/widget/ImageView;II)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    int-to-float v0, p3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationZ(F)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private setLayout()V
    .locals 8

    new-instance v7, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerBgColor:I

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->greyColor:I

    iget v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;-><init>(Landroid/content/Context;IIIII)V

    iput-object v7, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIndexDisplay:[Z

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->greyColor:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFingerResID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerBgColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationZ(F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private setPercentAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercentAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercentAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercentAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$2;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showProgressVI(F)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    iput v2, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPreviousPercent:F

    :try_start_0
    iget v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    const/high16 v3, 0x42340000    # 45.0f

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {v1, v4, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_1

    :pswitch_1
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    invoke-direct {v1, v4, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_0
    const/high16 v0, 0x41980000    # 19.0f

    cmpl-float v5, v2, v0

    if-lez v5, :cond_1

    const/4 v5, 0x2

    invoke-direct {v1, v5, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_1
    const/high16 v5, 0x41d80000    # 27.0f

    cmpl-float v6, v2, v5

    if-lez v6, :cond_2

    const/4 v6, 0x3

    invoke-direct {v1, v6, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_2
    const/high16 v6, 0x42080000    # 34.0f

    cmpl-float v7, v2, v6

    if-lez v7, :cond_3

    const/4 v7, 0x4

    invoke-direct {v1, v7, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_3
    const/high16 v7, 0x42240000    # 41.0f

    cmpl-float v8, v2, v7

    if-lez v8, :cond_4

    const/4 v8, 0x5

    invoke-direct {v1, v8, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_4
    const/high16 v8, 0x423c0000    # 47.0f

    cmpl-float v9, v2, v8

    if-lez v9, :cond_5

    const/4 v9, 0x6

    invoke-direct {v1, v9, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_5
    const/high16 v9, 0x42540000    # 53.0f

    cmpl-float v10, v2, v9

    if-lez v10, :cond_6

    const/4 v10, 0x7

    invoke-direct {v1, v10, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_6
    const/high16 v10, 0x42640000    # 57.0f

    cmpl-float v11, v2, v10

    if-lez v11, :cond_7

    const/16 v11, 0x8

    invoke-direct {v1, v11, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_7
    const/high16 v11, 0x427c0000    # 63.0f

    cmpl-float v12, v2, v11

    if-lez v12, :cond_8

    const/16 v12, 0x9

    invoke-direct {v1, v12, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_8
    const/high16 v12, 0x42860000    # 67.0f

    cmpl-float v13, v2, v12

    if-lez v13, :cond_9

    const/16 v13, 0xa

    invoke-direct {v1, v13, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_9
    const/high16 v13, 0x428e0000    # 71.0f

    cmpl-float v14, v2, v13

    if-lez v14, :cond_a

    const/16 v14, 0xb

    invoke-direct {v1, v14, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_a
    const/high16 v14, 0x42960000    # 75.0f

    cmpl-float v15, v2, v14

    if-lez v15, :cond_b

    const/16 v15, 0xc

    invoke-direct {v1, v15, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_b
    const/high16 v15, 0x429e0000    # 79.0f

    cmpl-float v16, v2, v15

    if-lez v16, :cond_c

    const/16 v3, 0xd

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_c
    iget-boolean v3, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsFourGuides:Z

    const/high16 v16, 0x42a00000    # 80.0f

    if-eqz v3, :cond_10

    iget v3, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    if-ne v3, v4, :cond_10

    cmpl-float v3, v2, v16

    if-lez v3, :cond_d

    const/16 v3, 0x29

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_d
    const/high16 v3, 0x42aa0000    # 85.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_e

    const/16 v3, 0x2a

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_e
    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_f

    const/16 v3, 0x2b

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_f
    const/high16 v3, 0x42be0000    # 95.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_13

    const/16 v3, 0x2c

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    goto :goto_0

    :cond_10
    cmpl-float v3, v2, v16

    if-lez v3, :cond_11

    const/16 v3, 0x1f

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_11
    const/high16 v3, 0x42ae0000    # 87.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_12

    const/16 v3, 0x20

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_12
    const/high16 v3, 0x42ba0000    # 93.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_13

    const/16 v3, 0x21

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(IZ)V

    :cond_13
    :goto_0
    cmpl-float v3, v2, v16

    if-ltz v3, :cond_1c

    iget-boolean v3, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsFourGuides:Z

    if-eqz v3, :cond_18

    iget v3, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    if-ne v3, v4, :cond_18

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_14

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_1

    :cond_14
    const/high16 v3, 0x42be0000    # 95.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_15

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_1

    :cond_15
    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_16

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_1

    :cond_16
    const/high16 v3, 0x42aa0000    # 85.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_17

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_1

    :cond_17
    cmpl-float v3, v2, v16

    if-ltz v3, :cond_29

    iget-object v3, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    invoke-virtual {v3, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_1

    :cond_18
    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_19

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_1

    :cond_19
    const/high16 v3, 0x42ba0000    # 93.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1a

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_1

    :cond_1a
    const/high16 v3, 0x42ae0000    # 87.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1b

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_1

    :cond_1b
    cmpl-float v3, v2, v16

    if-ltz v3, :cond_29

    iget-object v3, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    invoke-virtual {v3, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_1

    :cond_1c
    cmpl-float v3, v2, v15

    if-ltz v3, :cond_1d

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_1

    :cond_1d
    cmpl-float v3, v2, v14

    if-ltz v3, :cond_1e

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_1

    :cond_1e
    cmpl-float v3, v2, v13

    if-ltz v3, :cond_1f

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_1

    :cond_1f
    cmpl-float v3, v2, v12

    if-ltz v3, :cond_20

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    invoke-virtual {v0, v5}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_1

    :cond_20
    cmpl-float v3, v2, v11

    if-ltz v3, :cond_21

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_1

    :cond_21
    cmpl-float v3, v2, v10

    if-ltz v3, :cond_22

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41f80000    # 31.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_1

    :cond_22
    cmpl-float v3, v2, v9

    if-ltz v3, :cond_23

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x42040000    # 33.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_1

    :cond_23
    cmpl-float v3, v2, v8

    if-ltz v3, :cond_24

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_1

    :cond_24
    cmpl-float v3, v2, v7

    if-ltz v3, :cond_25

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x42140000    # 37.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_1

    :cond_25
    cmpl-float v3, v2, v6

    if-ltz v3, :cond_26

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x421c0000    # 39.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_1

    :cond_26
    cmpl-float v3, v2, v5

    if-ltz v3, :cond_27

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    invoke-virtual {v0, v7}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_1

    :cond_27
    cmpl-float v0, v2, v0

    if-ltz v0, :cond_28

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x422c0000    # 43.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_1

    :cond_28
    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x42340000    # 45.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :cond_29
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "FingerScanEffect"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startViewAnimation(IZ)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIndexDisplay:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIndexDisplay:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_b

    :pswitch_0
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_02_fill_3_3:I

    const/16 v3, 0xc

    goto/16 :goto_b

    :pswitch_1
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_02_fill_4_3:I

    const/16 v3, 0xe

    goto/16 :goto_b

    :pswitch_2
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_02_fill_4_2:I

    const/16 v3, 0x10

    goto/16 :goto_b

    :pswitch_3
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_02_fill_4_1:I

    const/16 v3, 0x12

    goto/16 :goto_b

    :pswitch_4
    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    if-nez v4, :cond_1

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_touch_02_fill_3_3:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_02_fill_3_3:I

    :goto_0
    const/16 v3, 0xe

    goto/16 :goto_b

    :pswitch_5
    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    if-nez v4, :cond_2

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_touch_02_fill_3_2:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_02_fill_3_2:I

    :goto_1
    const/16 v3, 0x10

    goto/16 :goto_b

    :pswitch_6
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_02_fill_3_1:I

    const/16 v3, 0x12

    goto/16 :goto_b

    :pswitch_7
    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    if-nez v4, :cond_3

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_touch_01_fill_13:I

    goto :goto_2

    :cond_3
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_80:I

    :goto_2
    const/16 v3, 0x14

    goto/16 :goto_b

    :pswitch_8
    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    if-nez v4, :cond_4

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_touch_01_fill_12:I

    goto :goto_3

    :cond_4
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_76:I

    :goto_3
    const/16 v3, 0x16

    goto/16 :goto_b

    :pswitch_9
    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    if-nez v4, :cond_5

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_touch_01_fill_11:I

    goto :goto_4

    :cond_5
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_72:I

    :goto_4
    const/16 v3, 0x18

    goto/16 :goto_b

    :pswitch_a
    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    if-nez v4, :cond_6

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_touch_01_fill_10:I

    goto :goto_5

    :cond_6
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_68:I

    :goto_5
    const/16 v3, 0x1a

    goto :goto_b

    :pswitch_b
    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    if-nez v4, :cond_7

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_touch_01_fill_09:I

    goto :goto_6

    :cond_7
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_64:I

    :goto_6
    const/16 v3, 0x1c

    goto :goto_b

    :pswitch_c
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_60:I

    const/16 v3, 0x1e

    goto :goto_b

    :pswitch_d
    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    if-nez v4, :cond_8

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_touch_01_fill_07:I

    goto :goto_7

    :cond_8
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_56:I

    :goto_7
    const/16 v3, 0x20

    goto :goto_b

    :pswitch_e
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_52:I

    const/16 v3, 0x22

    goto :goto_b

    :pswitch_f
    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    if-nez v4, :cond_9

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_touch_01_fill_05:I

    goto :goto_8

    :cond_9
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_48:I

    :goto_8
    const/16 v3, 0x24

    goto :goto_b

    :pswitch_10
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_42:I

    const/16 v3, 0x26

    goto :goto_b

    :pswitch_11
    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    if-nez v4, :cond_a

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_touch_01_fill_03:I

    goto :goto_9

    :cond_a
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_38:I

    :goto_9
    const/16 v3, 0x28

    goto :goto_b

    :pswitch_12
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_34:I

    const/16 v3, 0x2a

    goto :goto_b

    :pswitch_13
    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_touch_02_fill_3_3:I

    goto :goto_a

    :cond_b
    sget v2, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_30:I

    :goto_a
    const/16 v3, 0x2c

    nop

    :goto_b
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz p2, :cond_d

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_c

    return-void

    :cond_c
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v6

    const-wide/16 v5, 0xa

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v4, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c

    :cond_d
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_e

    return-void

    :cond_e
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v6

    invoke-virtual {v4, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x29
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public destroyDrawingCache()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->clearAnimation()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->clearAnimation()V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->removeAllViews()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    return-void
.end method

.method public setPercent(F)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->cancelAnimator()V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    const/high16 v1, 0x42a00000    # 80.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercent:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    const/high16 v0, 0x42ae0000    # 87.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsFourGuides:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    iget-boolean v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsFourGuides:Z

    iput-boolean v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mIsFourGuides:Z

    :cond_0
    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercent:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mEnrollType:I

    if-ne v0, v2, :cond_4

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    if-eq v0, v2, :cond_2

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    if-ge v0, v2, :cond_4

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->bg_finger_02:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    if-lez v0, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->bg_finger_01:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mTargetPercent:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

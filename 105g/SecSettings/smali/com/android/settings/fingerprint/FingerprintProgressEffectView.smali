.class public Lcom/android/settings/fingerprint/FingerprintProgressEffectView;
.super Landroid/widget/FrameLayout;
.source "FingerprintProgressEffectView.java"


# static fields
.field private static completeResID:I

.field private static completeShadowResID:I

.field private static inverseFingerResID:I

.field private static mCompleteColor:I

.field private static mFingerBgColor:I

.field private static mGreyColor:I

.field private static mProgressColor:I

.field private static strokeWidth:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEffectHeight:I

.field private mEffectWidth:I

.field private mEnrollType:I

.field private mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

.field private mHeight:I

.field private mImageView:Landroid/widget/ImageView;

.field private mIsExpandFourGuide:Z

.field private mIsExpendViShown:Z

.field private mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPercent:F

.field private mUiVersion:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->inverseFingerResID:I

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeResID:I

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeShadowResID:I

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerBgColor:I

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mProgressColor:I

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mGreyColor:I

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mCompleteColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mHeight:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEnrollType:I

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpandFourGuide:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpendViShown:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mHeight:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEnrollType:I

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpandFourGuide:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpendViShown:Z

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mHeight:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEnrollType:I

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpandFourGuide:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpendViShown:Z

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintProgressEffectView;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintProgressEffectView;)Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintProgressEffectView;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->showEnrollGuideVI(FZ)V

    return-void
.end method

.method public static getConvertedPercent(I)I
    .locals 10

    const/16 v0, 0x50

    if-lt p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v1, 0x32

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    add-int/2addr v0, v1

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    add-int v0, p0, v1

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    sub-double/2addr v6, v2

    sub-double v8, v4, v2

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    mul-double/2addr v6, v8

    double-to-int v0, v6

    if-lez p0, :cond_1

    div-int/lit8 v6, p0, 0x8

    rsub-int/lit8 v6, v6, 0x9

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    add-int/2addr v0, v6

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/R$styleable;->FingerprintEffectView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0224

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    const v2, 0x7f08039b

    sput v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->inverseFingerResID:I

    const v2, 0x7f080390

    sput v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeResID:I

    const v2, 0x7f080391

    sput v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeShadowResID:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06014e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerBgColor:I

    const v2, -0x9e4713    # -3.0003649E38f

    sput v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mProgressColor:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060151

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mGreyColor:I

    const v2, -0xff8b2c

    sput v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mCompleteColor:I

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->semHasFeature(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEnrollType:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isSideSensor()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isDispaySensor()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isSensorInLandscape()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEnrollType:I

    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEnrollType:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context or attrs is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setPercent(FZ)V
    .locals 3

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    const/high16 v1, 0x42a00000    # 80.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/high16 v0, 0x42aa0000    # 85.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpandFourGuide:Z

    :cond_1
    cmpl-float v0, p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    if-lez v0, :cond_2

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->showEnrollGuideVI(FZ)V

    goto :goto_0

    :cond_2
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->showEnrollGuideVI(FZ)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setPercent(F)V

    :cond_4
    if-eqz p2, :cond_5

    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    :cond_5
    return-void
.end method

.method private showEnrollGuideVI(FZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEnrollType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isRearSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpandFourGuide:Z

    const/high16 v1, 0x42c80000    # 100.0f

    const v2, 0x7f080392

    const/high16 v3, 0x42a00000    # 80.0f

    if-eqz v0, :cond_4

    cmpl-float v0, p1, v3

    const/high16 v3, 0x42aa0000    # 85.0f

    if-ltz v0, :cond_1

    cmpg-float v0, p1, v3

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_1
    cmpl-float v0, p1, v3

    const/high16 v2, 0x42b40000    # 90.0f

    if-ltz v0, :cond_2

    cmpg-float v0, p1, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f080395

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    cmpl-float v0, p1, v2

    const/high16 v2, 0x42be0000    # 95.0f

    if-ltz v0, :cond_3

    cmpg-float v0, p1, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f080396

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_7

    cmpg-float v0, p1, v1

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f080397

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    cmpl-float v0, p1, v3

    const/high16 v3, 0x42ae0000    # 87.0f

    if-ltz v0, :cond_5

    cmpg-float v0, p1, v3

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    cmpl-float v0, p1, v3

    const/high16 v2, 0x42ba0000    # 93.0f

    if-ltz v0, :cond_6

    cmpg-float v0, p1, v2

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f080393

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_7

    cmpg-float v0, p1, v1

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f080394

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    const v1, 0x7f010027

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public addEffectView(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v14, p1

    move/from16 v15, p2

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    iput v14, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWidth:I

    iput v15, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mHeight:I

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    :cond_0
    new-instance v13, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerBgColor:I

    sget v6, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mProgressColor:I

    sget v7, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mGreyColor:I

    sget v8, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mCompleteColor:I

    sget v9, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    sget v10, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->inverseFingerResID:I

    sget v11, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeResID:I

    sget v12, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeShadowResID:I

    iget v4, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

    move-object v1, v13

    move v3, v14

    move/from16 v16, v4

    move v4, v15

    move-object v14, v13

    move/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;-><init>(Landroid/content/Context;IIIIIIIIIII)V

    iput-object v14, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isDispaySensor()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setCustomDuration(I)V

    :cond_1
    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setLayoutDirection(I)V

    return-void
.end method

.method public destroyDrawingCache()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->clearAnimation()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->clearAnimation()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeAllViews()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    return-void
.end method

.method public setFingerStatus(I)V
    .locals 6

    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x42a00000    # 80.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v3, v4

    :cond_0
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    cmpg-float v4, v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    if-gez v4, :cond_1

    cmpl-float v4, v3, v2

    if-ltz v4, :cond_1

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    add-float/2addr v1, v2

    div-float v3, v1, v5

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    cmpl-float v2, v3, v1

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    add-float/2addr v2, v1

    div-float v3, v2, v5

    :cond_2
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(FZ)V

    goto :goto_1

    :pswitch_1
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    cmpl-float v2, v3, v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpendViShown:Z

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:F

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(FZ)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPercent(F)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(FZ)V

    return-void
.end method

.method public setWarningStatus(I)V
    .locals 2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showExpendGuideVI()V
    .locals 3

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEnrollType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpendViShown:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpendViShown:Z

    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "sec_fingerprint_enroll_animation_expand.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView$1;-><init>(Lcom/android/settings/fingerprint/FingerprintProgressEffectView;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWidth:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWidth:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.class public Lcom/android/settings/fingerprint/FingerprintProgressEffectView;
.super Landroid/widget/FrameLayout;
.source "FingerprintProgressEffectView.java"


# static fields
.field private static completeResID:I

.field private static completeShadowResID:I

.field private static inverseFingerResID:I

.field private static mCompleteColor:I

.field private static mFingerColor:I

.field private static mGreyColor:I

.field protected static mIsSupportNewUX:Z

.field private static mProgressColor:I

.field private static strokeWidth:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bShowError:Z

.field private mContext:Landroid/content/Context;

.field private mEffectHeight:I

.field private mEffectWidth:I

.field private mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

.field private mHeight:I

.field private mImageView:Landroid/widget/ImageView;

.field private mIsExpandFourGuide:Z

.field private mIsExpendViShown:Z

.field private mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPercent:I

.field private mUiVersion:I

.field private mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->inverseFingerResID:I

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeResID:I

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeShadowResID:I

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerColor:I

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mProgressColor:I

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mGreyColor:I

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mCompleteColor:I

    sput-boolean v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsSupportNewUX:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mHeight:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

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

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mHeight:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

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

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWidth:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mHeight:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

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

    div-int/lit8 v6, p0, 0xa

    rsub-int/lit8 v6, v6, 0xa

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    add-int/2addr v0, v6

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    const-string v0, "ro.product.device"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isDispaySensor()Z

    move-result v1

    const-string v2, "beyond"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    const-string/jumbo v2, "winner"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsSupportNewUX:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/R$styleable;->FingerprintEffectView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0224

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    const v2, 0x7f08038f

    sput v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->inverseFingerResID:I

    const v2, 0x7f080384

    sput v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeResID:I

    const v2, 0x7f080385

    sput v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeShadowResID:I

    const v2, -0xff8b2c

    sput v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerColor:I

    const v3, -0x9e4713    # -3.0003649E38f

    sput v3, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mProgressColor:I

    const v3, -0x29292a

    sput v3, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mGreyColor:I

    sput v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mCompleteColor:I

    sget-boolean v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsSupportNewUX:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context or attrs is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addEffectView(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v14, p1

    move/from16 v15, p2

    const/4 v13, 0x0

    iput v13, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    iput-boolean v13, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    iput v14, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWidth:I

    iput v15, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mHeight:I

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    iput-object v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    :cond_0
    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    iput-object v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    :cond_1
    new-instance v12, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerColor:I

    sget v6, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mProgressColor:I

    sget v7, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mGreyColor:I

    sget v8, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mCompleteColor:I

    sget v9, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    sget v10, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->inverseFingerResID:I

    sget v11, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeResID:I

    sget v16, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->completeShadowResID:I

    iget v4, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

    move-object v1, v12

    move v3, v14

    move/from16 v17, v4

    move v4, v15

    move-object v14, v12

    move/from16 v12, v16

    move/from16 v13, v17

    invoke-direct/range {v1 .. v13}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;-><init>(Landroid/content/Context;IIIIIIIIIII)V

    iput-object v14, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isDispaySensor()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setCustomDuration(I)V

    :cond_2
    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    sget-boolean v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsSupportNewUX:Z

    if-nez v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070430

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v4, v2

    mul-float/2addr v4, v1

    float-to-int v10, v4

    new-instance v11, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    iget-object v5, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mUiVersion:I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->isSensorInLandscape()Z

    move-result v4

    xor-int/lit8 v9, v4, 0x1

    move-object v4, v11

    move v6, v3

    move v7, v10

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;-><init>(Landroid/content/Context;IIIZ)V

    iput-object v11, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    iget-object v4, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    invoke-virtual {v0, v4, v2, v15}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setLayoutDirection(I)V

    return-void
.end method

.method public removeFingerMark()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3e19999a    # 0.15f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setFingerStatus(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsSupportNewUX:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->showFinger()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->startAnimation(Landroid/view/animation/Animation;)V

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setWarningStatus(I)V

    :cond_1
    return-void
.end method

.method public setFingerStatus(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsSupportNewUX:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setFingerStatus(I)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->showEnrollGuideVI(IZ)V

    :cond_1
    return-void
.end method

.method public setPercent(I)V
    .locals 3

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    if-le v0, p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    const/4 v1, 0x1

    const/16 v2, 0x50

    if-ne v0, v2, :cond_1

    const/16 v0, 0x55

    if-gt p1, v0, :cond_1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpandFourGuide:Z

    :cond_1
    const/16 v0, 0x64

    if-le p1, v2, :cond_2

    if-ge p1, v0, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->showEnrollGuideVI(IZ)V

    goto :goto_0

    :cond_2
    if-lt p1, v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->showEnrollGuideVI(IZ)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setPercent(F)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-nez v0, :cond_5

    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    :cond_5
    return-void
.end method

.method public setWarningStatus(I)V
    .locals 2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsSupportNewUX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mLottiView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsSupportNewUX:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->hideFinger()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setWarningStatus(I)V

    :cond_2
    return-void
.end method

.method public showEnrollGuideVI(IZ)V
    .locals 4

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsSupportNewUX:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpandFourGuide:Z

    const/16 v1, 0x64

    const v2, 0x7f080386

    const/16 v3, 0x50

    if-eqz v0, :cond_4

    const/16 v0, 0x55

    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x5a

    if-lt p1, v0, :cond_2

    if-ge p1, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f080389

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x5f

    if-lt p1, v2, :cond_3

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f08038a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    if-lt p1, v0, :cond_7

    if-ge p1, v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f08038b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x57

    if-lt p1, v3, :cond_5

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    const/16 v2, 0x5d

    if-lt p1, v0, :cond_6

    if-ge p1, v2, :cond_6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f080387

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    if-lt p1, v2, :cond_7

    if-ge p1, v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f080388

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    const v1, 0x7f01002a

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

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_9
    :goto_2
    return-void
.end method

.method public showErrorEffect()V
    .locals 4

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    add-int/lit8 v0, v0, 0x5

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v0, 0x62

    :cond_0
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsSupportNewUX:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v2, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    :cond_1
    return-void
.end method

.method public showExpendGuideVI()V
    .locals 3

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsSupportNewUX:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpendViShown:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mIsExpendViShown:Z

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

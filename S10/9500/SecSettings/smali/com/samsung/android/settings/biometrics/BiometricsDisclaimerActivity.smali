.class public Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BiometricsDisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static MAX_BUTTON_SIZE:D

.field private static MAX_BUTTON_SIZE_TABLET:D


# instance fields
.field private final ButtonAreaHeightRate:D

.field private final FontScale_LARGE:F

.field private final IconTopMarginRateTablet:D

.field private final TitleAreaHeightRate:D

.field private final TitleAreaHeightRateTablet:D

.field private final TitleBottomMarginRateTablet:D

.field private final TotalBodyPaddingRateTablet:D

.field private mBiometricsDisclaimerBody:Landroid/widget/ScrollView;

.field private mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

.field private mBiometricsIconArea:Landroid/widget/LinearLayout;

.field private mBiometricsIconVI:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBiometricsIconView:Landroid/widget/ImageView;

.field private mBiometricsTitleTextView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mContinueButton:Landroid/widget/Button;

.field private mContinueButtonArea:Landroid/widget/LinearLayout;

.field protected mContinueEventId:I

.field private mFromSettingsOption:Z

.field private mFromSetupwizard:Z

.field private mIsSecured:Z

.field private mLockGuideTextView:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMainGuideTextView:Landroid/widget/TextView;

.field private mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

.field private mMoreAboutFaceSpinnerImage:Landroid/widget/ImageView;

.field private mMoreAboutFaceSpinnerText:Landroid/widget/TextView;

.field private mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

.field private mMoreAboutGuideFaceTotal:Landroid/widget/RelativeLayout;

.field private mMoreAboutGuideIrisDesc:Landroid/widget/RelativeLayout;

.field private mMoreAboutGuideIrisTotal:Landroid/widget/RelativeLayout;

.field private mMoreAboutGuideTotal:Landroid/widget/RelativeLayout;

.field private mMoreAboutIrisSpinner:Landroid/widget/LinearLayout;

.field private mMoreAboutIrisSpinnerImage:Landroid/widget/ImageView;

.field private mMoreAboutIrisSpinnerText:Landroid/widget/TextView;

.field private mNeedExpand:Z

.field private mOrientation:I

.field private mOriginFontScale:F

.field protected mRequestBiometricsType:I

.field protected mScreenId:I

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenWidth:I

.field private mSuwBottomBar:Landroid/widget/RelativeLayout;

.field mTitleArea:Landroid/widget/RelativeLayout;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    sput-wide v0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->MAX_BUTTON_SIZE:D

    const-wide v0, 0x3fe3333333333333L    # 0.6

    sput-wide v0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->MAX_BUTTON_SIZE_TABLET:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsSecured:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mNeedExpand:Z

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->FontScale_LARGE:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOriginFontScale:F

    const-wide v0, 0x3fceb851eb851eb8L    # 0.24

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->TitleAreaHeightRate:D

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->ButtonAreaHeightRate:D

    const-wide v0, 0x3fd5916872b020c5L    # 0.337

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->TitleAreaHeightRateTablet:D

    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->TotalBodyPaddingRateTablet:D

    const-wide v0, 0x3fe6d916872b020cL    # 0.714

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->IconTopMarginRateTablet:D

    const-wide v0, 0x3fd24dd2f1a9fbe7L    # 0.286

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->TitleBottomMarginRateTablet:D

    return-void
.end method

.method private adjustFontScale()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "BiometricsDisclaimerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "font scale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOriginFontScale:F

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOriginFontScale:F

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const-string v1, "BiometricsDisclaimerActivity"

    const-string v3, "Font scale is bigger than Large! Change font scale"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method private removeFaceGuideMarginTop()V
    .locals 3

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "removeFaceGuideMarginTop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private rollbackFontScale()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOriginFontScale:F

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string v0, "BiometricsDisclaimerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rollback Font Scale to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOriginFontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOriginFontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method private setBiometricsIconAndDescription()V
    .locals 9

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOrientation:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsSecured:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLockGuideTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSetupwizard:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mSuwBottomBar:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mSuwBottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_2
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mTitleArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLockGuideTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    const/16 v3, 0x1000

    if-eqz v0, :cond_7

    iget v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    if-eq v5, v3, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_3
    iget v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    if-eq v5, v1, :cond_14

    const/16 v6, 0x10

    const v7, 0x7f0806c7

    const v8, 0x7f0806c8

    if-eq v5, v6, :cond_10

    const/16 v6, 0x100

    if-eq v5, v6, :cond_c

    if-eq v5, v3, :cond_8

    const-string v1, "BiometricsDisclaimerActivity"

    const-string v2, "Wrong case"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_8
    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconVI:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v5, "sec_intelligent_scan_ic.json"

    invoke-virtual {v3, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, v1}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsTitleTextView:Landroid/widget/TextView;

    const v3, 0x7f1202f1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    const v3, 0x7f1202e5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLockGuideTextView:Landroid/widget/TextView;

    const v3, 0x7f1202e1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mNeedExpand:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinnerImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideIrisDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinnerImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideIrisDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_5
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    :cond_c
    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconView:Landroid/widget/ImageView;

    const v3, 0x7f0803dd

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v1, "BiometricsDisclaimerActivity"

    const-string/jumbo v3, "setResource"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsTitleTextView:Landroid/widget/TextView;

    const v3, 0x7f1202f0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    const v3, 0x7f1202e3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLockGuideTextView:Landroid/widget/TextView;

    const v3, 0x7f1202df

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideIrisTotal:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mNeedExpand:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-eqz v1, :cond_e

    goto :goto_6

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v1, "BiometricsDisclaimerActivity"

    const-string v2, "Spinner Gone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_f
    :goto_6
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v1, "BiometricsDisclaimerActivity"

    const-string v2, "Spinner visible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a

    :cond_10
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconView:Landroid/widget/ImageView;

    const v3, 0x7f0803df

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsTitleTextView:Landroid/widget/TextView;

    const v3, 0x7f1202b2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    const v3, 0x7f1202e6

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLockGuideTextView:Landroid/widget/TextView;

    const v3, 0x7f1202e2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceTotal:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mNeedExpand:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-eqz v1, :cond_12

    goto :goto_8

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinnerImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideIrisDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_9

    :cond_13
    :goto_8
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinnerImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideIrisDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_9
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a

    :cond_14
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideTotal:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconView:Landroid/widget/ImageView;

    const v2, 0x7f0803de

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_15
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsTitleTextView:Landroid/widget/TextView;

    const v2, 0x7f12099e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    const v2, 0x7f1202e4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLockGuideTextView:Landroid/widget/TextView;

    const v2, 0x7f1202e0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    nop

    :cond_16
    :goto_a
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->setShowDisclaimerValue(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    return-void
.end method

.method private setButtonAreaHeight()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fceb851eb851eb8L    # 0.24

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_0
    const-string v1, "BiometricsDisclaimerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buttonAreaHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setButtonSize()V
    .locals 5

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "setButtonSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenWidth:I

    const-string v0, "BiometricsDisclaimerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScreenWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueButton:Landroid/widget/Button;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenWidth:I

    int-to-double v1, v1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-wide v3, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->MAX_BUTTON_SIZE_TABLET:D

    goto :goto_0

    :cond_0
    sget-wide v3, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->MAX_BUTTON_SIZE:D

    :goto_0
    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    :cond_1
    return-void
.end method

.method private setCenterAlignment()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLockGuideTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method private setDisclaimerTotalPaddingForTablet()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    const-string v1, "BiometricsDisclaimerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisclaimerTotalPaddingForTablet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method private setIrisDescription()V
    .locals 7

    const v0, 0x7f0a00e5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00e6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a00e7

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a00e8

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f12074d

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f12074f

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f120750

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f12074c

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f120751

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setSettingsOptionGUI()V
    .locals 3

    const-string v0, "BiometricsDisclaimerActivity"

    const-string/jumbo v1, "setSettingsOptionGUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerBody:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerBody:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private setTitleAreaHeight()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mTitleArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOrientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const-string v1, "BiometricsDisclaimerActivity"

    const-string v2, "Phone && Landscape mode doesn\'t need to set title height"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v1, v3

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSetupwizard:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    :goto_0
    int-to-double v2, v1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-nez v4, :cond_3

    const-wide v4, 0x3fceb851eb851eb8L    # 0.24

    goto :goto_1

    :cond_3
    const-wide v4, 0x3fd5916872b020c5L    # 0.337

    :goto_1
    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const-string v2, "BiometricsDisclaimerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "titleHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mTitleArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07007d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const-string v5, "BiometricsDisclaimerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "emptyScreenHeight : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-double v5, v4

    const-wide v7, 0x3fe6d916872b020cL    # 0.714

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-double v5, v4

    const-wide v7, 0x3fd24dd2f1a9fbe7L    # 0.286

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00d8

    const v2, 0x7f0806c8

    const v3, 0x7f0806c7

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a00db

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "BiometricsDisclaimerActivity"

    const-string v6, "More about iris"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideIrisDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideIrisDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinnerImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideIrisDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinnerImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const-string v1, "BiometricsDisclaimerActivity"

    const-string v6, "More about face"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    nop

    :goto_0
    return-void
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 2

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "onClickContinue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenId:I

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueEventId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsSecured:Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mUserId:I

    const-string v0, "BiometricsDisclaimerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const-string v0, "BiometricsDisclaimerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRequestBiometricsType : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    if-nez v0, :cond_1

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "Wrong Request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromSetupwizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSetupwizard:Z

    const-string v0, "BiometricsDisclaimerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFromSetupwizard : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSetupwizard:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromSettingsOption"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    const-string v0, "BiometricsDisclaimerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFromSettingsOption : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getShowDisclaimerValue(Landroid/content/Context;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mNeedExpand:Z

    const-string v0, "BiometricsDisclaimerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNeedExpand : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mNeedExpand:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getAppId(I)I

    move-result v0

    const-string v1, "BiometricsDisclaimerActivity"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finish()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->adjustFontScale()V

    const v0, 0x7f0d012d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOrientation:I

    const-string v0, "BiometricsDisclaimerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00ed

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mTitleArea:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00d3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconVI:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a00d4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsTitleTextView:Landroid/widget/TextView;

    const v0, 0x7f0a00d2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerBody:Landroid/widget/ScrollView;

    const v0, 0x7f0a00d7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLockGuideTextView:Landroid/widget/TextView;

    const v0, 0x7f0a00ec

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideTotal:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00e9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideIrisTotal:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00eb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideIrisDesc:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00db

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinner:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00dd

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinnerText:Landroid/widget/TextView;

    const v0, 0x7f0a00da

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinnerImage:Landroid/widget/ImageView;

    const v0, 0x7f0a00e0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceTotal:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00ea

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00d8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerText:Landroid/widget/TextView;

    const v0, 0x7f0a00d9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerImage:Landroid/widget/ImageView;

    const v0, 0x7f0a01d0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueButtonArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01d2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueButton:Landroid/widget/Button;

    const v0, 0x7f0a0142

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mSuwBottomBar:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinner:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinnerText:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutIrisSpinnerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_6
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v2, 0x100

    if-ne v0, v2, :cond_7

    const/16 v0, 0x20d9

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenId:I

    const/16 v0, 0x20da

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueEventId:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    if-ne v0, v1, :cond_8

    const/16 v0, 0x2037

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenId:I

    const/16 v0, 0x2038

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueEventId:I

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    const/16 v0, 0x20b2

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenId:I

    const/16 v0, 0x20b3

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueEventId:I

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/16 v0, 0x2125

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenId:I

    const/16 v0, 0x2126

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueEventId:I

    :cond_a
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setIrisDescription()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_b
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "Unregister receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->rollbackFontScale()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconVI:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setButtonAreaHeight()V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setTitleAreaHeight()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setDisclaimerTotalPaddingForTablet()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setCenterAlignment()V

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->removeFaceGuideMarginTop()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setButtonSize()V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setBiometricsIconAndDescription()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setSettingsOptionGUI()V

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenId:I

    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    :cond_4
    return-void
.end method

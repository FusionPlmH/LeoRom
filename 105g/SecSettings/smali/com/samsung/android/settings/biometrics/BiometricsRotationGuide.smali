.class public Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BiometricsRotationGuide.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private final GuideTextPaddingRate:D

.field private final MAX_BUTTON_SIZE_TABLET:D

.field private isPaused:Z

.field private mContext:Landroid/content/Context;

.field private mContinueButton:Landroid/widget/Button;

.field private mContinueButtonArea:Landroid/widget/LinearLayout;

.field private mFromSetupwizard:Z

.field private mGuideScrollView:Landroid/widget/ScrollView;

.field private mGuideVideoContainer:Landroid/widget/FrameLayout;

.field private mGuideVideoView:Landroid/view/TextureView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOrientation:I

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenWidth:I

.field private mSetupwizardButtonContainer:Landroid/widget/RelativeLayout;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->isPaused:Z

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideScrollView:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSetupwizardButtonContainer:Landroid/widget/RelativeLayout;

    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->GuideTextPaddingRate:D

    const-wide v0, 0x3fe3333333333333L    # 0.6

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->MAX_BUTTON_SIZE_TABLET:D

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setActivityResult(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mFromSetupwizard:Z

    return v0
.end method

.method private initBiometricsRotationGuideGUI()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mFromSetupwizard:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSetupwizardButtonContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSetupwizardButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideScrollView:Landroid/widget/ScrollView;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mFromSetupwizard:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const v4, 0x7f0700b7

    goto :goto_1

    :cond_3
    const v4, 0x7f0700b8

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mFromSetupwizard:Z

    invoke-static {v4, v5}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const-string v3, "BiometricsRotationGuide"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScrollView height "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const v2, 0x7f0a01d6

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$2;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$2;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_2
    const-wide v2, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideScrollView:Landroid/widget/ScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v2, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setButtonGUI()V

    return-void
.end method

.method private setActivityResult(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finish()V

    return-void
.end method

.method private setButtonGUI()V
    .locals 5

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "setButtonSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenWidth:I

    const-string v0, "BiometricsRotationGuide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScreenWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButton:Landroid/widget/Button;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenWidth:I

    int-to-double v1, v1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const-string v1, "BiometricsRotationGuide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buttonAreaHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private setMediaPlayer(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSurface:Landroid/view/Surface;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/sec_biometrics_rotation_guide_help_90"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/sec_biometrics_rotation_guide_help_180"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/sec_biometrics_rotation_guide_help_270"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_3
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "BiometricsRotationGuide"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$3;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onClickContinue(Landroid/view/View;)V
    .locals 2

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "onClickContinue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    const-string v1, "BiometricsRotationGuide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromSetupwizard"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mFromSetupwizard:Z

    const-string v2, "BiometricsRotationGuide"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFromSetupwizard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mFromSetupwizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0d0137

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setContentView(I)V

    const v2, 0x7f0a0100

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0101

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    const v2, 0x7f0a0367

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideScrollView:Landroid/widget/ScrollView;

    const v2, 0x7f0a01d8

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButton:Landroid/widget/Button;

    const v2, 0x7f0a01d6

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0145

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSetupwizardButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->isPaused:Z

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSurface:Landroid/view/Surface;

    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->initBiometricsRotationGuideGUI()V

    const-string v0, "BiometricsRotationGuide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->isPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->isPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->isPaused:Z

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

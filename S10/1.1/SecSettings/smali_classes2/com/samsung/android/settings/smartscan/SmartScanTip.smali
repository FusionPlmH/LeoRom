.class public Lcom/samsung/android/settings/smartscan/SmartScanTip;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SmartScanTip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final FontScale_LARGE:F

.field private final GuideTextPaddingRate:D

.field private mContext:Landroid/content/Context;

.field private mFromSetupwizard:Z

.field private mGuideImage:Landroid/widget/ImageView;

.field private mGuideImageContainer:Landroid/widget/RelativeLayout;

.field private mGuideScrollView:Landroid/widget/ScrollView;

.field private mOkButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field private mOkButtonContainer:Landroid/widget/RelativeLayout;

.field private mOriginFontScale:F

.field private mSetupwizardButtonContainer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mContext:Landroid/content/Context;

    const-wide v1, 0x3fbeb851eb851eb8L    # 0.12

    iput-wide v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->GuideTextPaddingRate:D

    const v1, 0x3fa66666    # 1.3f

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->FontScale_LARGE:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOriginFontScale:F

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOkButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOkButtonContainer:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mSetupwizardButtonContainer:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImageContainer:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideScrollView:Landroid/widget/ScrollView;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/smartscan/SmartScanTip;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/smartscan/SmartScanTip;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/smartscan/SmartScanTip;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mFromSetupwizard:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/smartscan/SmartScanTip;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOkButtonContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private adjustFontScale()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "SsstSmartScanTip"

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

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOriginFontScale:F

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOriginFontScale:F

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const-string v1, "SsstSmartScanTip"

    const-string v3, "Font scale is bigger than Large! Change font scale"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method private initSmartScanTipUI()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f010035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mFromSetupwizard:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOkButtonContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOkButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mSetupwizardButtonContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mSetupwizardButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImageContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImageContainer:Landroid/widget/RelativeLayout;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->semSetRoundedCorners(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->semSetRoundedCornerColor(II)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideScrollView:Landroid/widget/ScrollView;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mFromSetupwizard:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070793

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mFromSetupwizard:Z

    invoke-static {v4, v5}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const-string v3, "SsstSmartScanTip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScrollView height "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const v2, 0x7f0a0587

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/samsung/android/settings/smartscan/SmartScanTip$1;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanTip$1;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanTip;Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_1
    const-wide v2, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideScrollView:Landroid/widget/ScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v2, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOkButtonContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOkButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOkButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method private rollbackFontScale()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOriginFontScale:F

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string v0, "SsstSmartScanTip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rollback Font Scale to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOriginFontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOriginFontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0146

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->finish()V

    nop

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SsstSmartScanTip"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromSetupwizard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mFromSetupwizard:Z

    const-string v1, "SsstSmartScanTip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFromSetupwizard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mFromSetupwizard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0d026c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->adjustFontScale()V

    const v1, 0x7f0a0790

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImage:Landroid/widget/ImageView;

    const v1, 0x7f0a0782

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImageContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0365

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideScrollView:Landroid/widget/ScrollView;

    const v1, 0x7f0a0146

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOkButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const v1, 0x7f0a0587

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOkButtonContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0143

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mSetupwizardButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOkButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mOkButton:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "SsstSmartScanTip"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "SsstSmartScanTip"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->rollbackFontScale()V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const-string v0, "SsstSmartScanTip"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanTip;->initSmartScanTipUI()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanTip;->mGuideImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.class public Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;
.super Landroid/app/Activity;
.source "BiometricsLockSetup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mButton:Landroid/widget/Button;

.field private static mWidth:I


# instance fields
.field private EVENT_ID_CONTINUE:I

.field private final FontScale_LARGE:F

.field private final Margin_Landscape:D

.field private final Margin_Portrait:D

.field private SCREEN_ID:I

.field private mContinueButton:Landroid/view/View;

.field private mContinueButtonContainer:Landroid/view/View;

.field private mDODisableCount:I

.field private mExistFace:Z

.field private mExistIris:Z

.field private mForFace:Z

.field private mForFingerprint:Z

.field private mForIris:Z

.field private mForSmartscan:Z

.field private mFromSetupwizard:Z

.field private mIsFromKnoxWorkspace:Z

.field private mNextButton:Landroid/view/View;

.field private mOrientation:I

.field private mOriginFontScale:F

.field private mPreviousButton:Landroid/view/View;

.field private mSetupwizardButtonContainer:Landroid/view/View;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mUserId:I

.field multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->FontScale_LARGE:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    const-wide v0, 0x3fbf9db22d0e5604L    # 0.1235

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->Margin_Portrait:D

    const-wide v0, 0x3fbe978d4fdf3b64L    # 0.1195

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->Margin_Landscape:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mUserId:I

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mWidth:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mWidth:I

    return p0
.end method

.method static synthetic access$100()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addImmersiveFlagsToDecorView(Landroid/view/Window;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->addVisibilityFlag(Landroid/view/View;I)V

    return-void

    :cond_0
    return-void
.end method

.method private addImmersiveFlagsToWindow(Landroid/view/Window;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/2addr v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method private adjustFontScale()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "BiometricsLockSetup"

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

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const-string v1, "BiometricsLockSetup"

    const-string v3, "Font scale is bigger than Large! Change font scale"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method private disableStatusBarAndMultiWindow()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mDODisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mDODisableCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    if-eqz v0, :cond_0

    const-string v0, "BiometricsLockSetup"

    const-string v1, "DO pwd changed, makes multi window disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    const-string v1, "DOPwdChanged"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/SemMultiWindowManager;->setMultiWindowEnabled(Ljava/lang/String;Z)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private enableStatusBarAndMultiWindow()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mDODisableCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mDODisableCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mDODisableCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    if-eqz v0, :cond_0

    const-string v0, "BiometricsLockSetup"

    const-string v2, "DO pwd change complete, set multi-window enable"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    const-string v2, "DOPwdChanged"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/SemMultiWindowManager;->setMultiWindowEnabled(Ljava/lang/String;Z)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private rollbackFontScale()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string v0, "BiometricsLockSetup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rollback Font Scale to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOriginFontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method private setButtonSize()V
    .locals 3

    const v0, 0x7f0a01d8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mButton:Landroid/widget/Button;

    const v0, 0x7f0a00fe

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setDescriptionString()V
    .locals 13

    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a00fd

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a00f9

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a00f4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a00f5

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a00f6

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a00f7

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f1202fb

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v4, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f1202fc

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mUserId:I

    invoke-static {v7, v8}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    const v9, 0x7f120985

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v8, :cond_4

    if-eqz v1, :cond_2

    const v8, 0x7f120986

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    if-eqz v2, :cond_3

    const v8, 0x7f120984

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    if-eqz v6, :cond_11

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_4
    iget-boolean v8, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-eqz v8, :cond_9

    if-eqz v0, :cond_5

    const v8, 0x7f0803ec

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    if-eqz v1, :cond_6

    const v8, 0x7f1209b6

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    if-eqz v2, :cond_8

    iget-boolean v8, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsFromKnoxWorkspace:Z

    if-eqz v8, :cond_7

    const v8, 0x7f120a01

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    const v8, 0x7f120a00

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_0
    if-eqz v6, :cond_11

    const v8, 0x7f1209ff

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_9
    iget-boolean v8, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    const v12, 0x7f120301

    if-eqz v8, :cond_d

    if-eqz v1, :cond_a

    const v8, 0x7f1202be

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_a
    if-eqz v2, :cond_c

    iget-boolean v8, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsFromKnoxWorkspace:Z

    if-eqz v8, :cond_b

    const v8, 0x7f1202bd

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_b
    const v8, 0x7f1202bc

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_c
    :goto_1
    if-eqz v6, :cond_11

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_d
    iget-boolean v8, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForSmartscan:Z

    if-eqz v8, :cond_11

    if-eqz v1, :cond_e

    const v8, 0x7f1218d8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_e
    if-eqz v2, :cond_f

    const v8, 0x7f1218d6

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_f
    if-eqz v6, :cond_11

    const v8, 0x7f1218d7

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v8, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mExistIris:Z

    if-eqz v8, :cond_10

    iget-boolean v8, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mExistFace:Z

    if-nez v8, :cond_10

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_10
    iget-boolean v8, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mExistFace:Z

    if-eqz v8, :cond_11

    iget-boolean v8, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mExistIris:Z

    if-nez v8, :cond_11

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(I)V

    :cond_11
    :goto_2
    if-eqz v5, :cond_13

    iget-boolean v8, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsFromKnoxWorkspace:Z

    if-eqz v8, :cond_12

    const v8, 0x7f1202fe

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_12
    const v8, 0x7f1202fd

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_13
    :goto_3
    return-void
.end method


# virtual methods
.method public addVisibilityFlag(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public hideSystemBars(Landroid/view/Window;)V
    .locals 2

    const/16 v0, 0x1202

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x400

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->addImmersiveFlagsToWindow(Landroid/view/Window;I)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "BiometricsLockSetup"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a053c

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a05ea

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BiometricsLockSetup"

    const-string v1, "Previous button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    goto :goto_0

    :cond_1
    const-string v0, "BiometricsLockSetup"

    const-string v1, "Next button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    :goto_0
    return-void
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 2

    const-string v0, "BiometricsLockSetup"

    const-string v1, "onClickContinue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20d9

    const/16 v1, 0x20da

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x2037

    const/16 v1, 0x2038

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x20b2

    const/16 v1, 0x20b3

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForSmartscan:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x2125

    const/16 v1, 0x2126

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_3
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "BiometricsLockSetup"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->adjustFontScale()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "for_face"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "for_iris"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "for_fingerprint"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "for_smartscan"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForSmartscan:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "existFace"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mExistFace:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "existIris"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mExistIris:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromSetupwizard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-eqz v1, :cond_1

    const v0, 0x7f1202b4

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-eqz v1, :cond_2

    const v0, 0x7f1202b5

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    if-eqz v1, :cond_3

    const v0, 0x7f1202b6

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForSmartscan:Z

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, "BiometricsLockSetup"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->finish()V

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->SCREEN_ID:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->EVENT_ID_CONTINUE:I

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->SCREEN_ID:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0225

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->EVENT_ID_CONTINUE:I

    goto :goto_0

    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->SCREEN_ID:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->EVENT_ID_CONTINUE:I

    :cond_8
    :goto_0
    const v1, 0x7f0d0134

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mOrientation:I

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->hideSystemBars(Landroid/view/Window;)V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setIndicatorTransparency()V

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    :goto_1
    const v1, 0x7f0a01d6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContinueButtonContainer:Landroid/view/View;

    const v1, 0x7f0a01d8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContinueButton:Landroid/view/View;

    const v1, 0x7f0a0145

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mSetupwizardButtonContainer:Landroid/view/View;

    const v1, 0x7f0a05ea

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mPreviousButton:Landroid/view/View;

    const v1, 0x7f0a053c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mNextButton:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContinueButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContinueButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mContinueButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mSetupwizardButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mSetupwizardButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mPreviousButton:Landroid/view/View;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mPreviousButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mNextButton:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mNextButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08071a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    const-string/jumbo v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mStatusBarManager:Landroid/app/StatusBarManager;

    new-instance v2, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v2}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "is_knox"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mIsFromKnoxWorkspace:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mUserId:I

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "BiometricsLockSetup"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->rollbackFontScale()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->enableStatusBarAndMultiWindow()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "BiometricsLockSetup"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setButtonSize()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setDescriptionString()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isPwdSetupOrChangeRequested(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->disableStatusBarAndMultiWindow()V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFace:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x20d9

    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForFingerprint:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x2037

    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForIris:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x20b2

    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mForSmartscan:Z

    if-eqz v0, :cond_5

    const/16 v0, 0x2125

    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    const-string v0, "BiometricsLockSetup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->mFromSetupwizard:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "BiometricsLockSetup"

    const-string v1, "onWindowFocusChanged : mFromSetupwizard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->hideSystemBars(Landroid/view/Window;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->setIndicatorTransparency()V

    :cond_1
    return-void
.end method

.method public setIndicatorTransparency()V
    .locals 4

    const/16 v0, 0x3402

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsLockSetup;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

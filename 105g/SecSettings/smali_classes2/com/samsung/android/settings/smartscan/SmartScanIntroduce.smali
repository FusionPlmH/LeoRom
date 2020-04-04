.class public Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;
.super Landroid/app/Activity;
.source "SmartScanIntroduce.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final FontScale_LARGE:F

.field private isPaused:Z

.field private mBtnContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mContinueBtn:Landroid/widget/Button;

.field private mForFace:Z

.field private mFromSetupwizard:Z

.field private mGuideVideoContainer:Landroid/widget/FrameLayout;

.field private mGuideVideoView:Landroid/view/TextureView;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOriginFontScale:F

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSetupwizardButtonContainer:Landroid/view/View;

.field private mSurface:Landroid/view/Surface;

.field private mSuwSetupBtn:Landroid/widget/LinearLayout;

.field private mSuwSkipBtn:Landroid/widget/LinearLayout;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mHandler:Landroid/os/Handler;

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->FontScale_LARGE:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mUserId:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$1;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setActivityResult(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->showDisclaimer()V

    return-void
.end method

.method private addImmersiveFlagsToDecorView(Landroid/view/Window;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->addVisibilityFlag(Landroid/view/View;I)V

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

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "SsstSmartScanIntroduce"

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

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const-string v1, "SsstSmartScanIntroduce"

    const-string v3, "Font scale is bigger than Large! Change font scale"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method private rollbackFontScale()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string v0, "SsstSmartScanIntroduce"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rollback Font Scale to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method private setActivityResult(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->finish()V

    return-void
.end method

.method private setMediaPlayer(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/raw/sec_intelligentscan_help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SsstSmartScanIntroduce"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$3;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_1
    return-void
.end method

.method private showDisclaimer()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mUserId:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->showSmartScanDisclaimerDialog(Landroid/content/Context;IZ)V

    return-void
.end method

.method private startSuwSmartScanDisclaimer()V
    .locals 4

    const-string v0, "SsstSmartScanIntroduce"

    const-string v1, "startSuwSmartScanDisclaimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.smartscan.SmartScanSuwDisclaimer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v2, "SsstSmartScanIntroduce"

    const-string v3, "startSuwSmartScanDisclaimer : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
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
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->addImmersiveFlagsToWindow(Landroid/view/Window;I)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    const-string v0, "SsstSmartScanIntroduce"

    const-string v1, "Skip pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setResult(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContinueBtn:Landroid/widget/Button;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    :cond_1
    const-string v0, "SsstSmartScanIntroduce"

    const-string v1, "Set up pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setResult(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "SsstSmartScanIntroduce"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SsstSmartScanIntroduce"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContext:Landroid/content/Context;

    const v0, 0x7f0d026d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromSetupwizard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mHandler:Landroid/os/Handler;

    const-string v1, "for_face"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mForFace:Z

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mUserId:I

    const v1, 0x7f0a078d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0a078e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v5, v4

    const-wide v7, 0x3fe0a3d700000000L    # 0.5199999809265137

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-double v5, v4

    const-wide v7, 0x3fc0a3d70a3d70a4L    # 0.13

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v5

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-double v6, v5

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-double v5, v5

    const-wide v7, 0x3ff2147ae147ae14L    # 1.13

    div-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v5, v3}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v5, "SsstSmartScanIntroduce"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GuideVideo height is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->adjustFontScale()V

    const v1, 0x7f0a058b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mBtnContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0a01d7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContinueBtn:Landroid/widget/Button;

    const v1, 0x7f0a0145

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSetupwizardButtonContainer:Landroid/view/View;

    const v1, 0x7f0a0776

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    const v1, 0x7f0a074b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContinueBtn:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContinueBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mBtnContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSetupwizardButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSetupwizardButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "show_button_background"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    const v3, 0x7f08071a

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->hideSystemBars(Landroid/view/Window;)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setIndicatorTransparency()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    :goto_2
    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mUserId:I

    invoke-static {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getSmartScanDisclaimerConfirmedValue(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_b

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->startSuwSmartScanDisclaimer()V

    goto :goto_3

    :cond_9
    new-instance v3, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$2;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->showDisclaimer()V

    :cond_b
    :goto_3
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_c
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SsstSmartScanIntroduce"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "SsstSmartScanIntroduce"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->rollbackFontScale()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "SsstSmartScanIntroduce"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->adjustFontScale()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V

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

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    const-string v0, "SsstSmartScanIntroduce"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "SsstSmartScanIntroduce"

    const-string v1, "onWindowFocusChanged : mFromSetupwizard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->hideSystemBars(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public setIndicatorTransparency()V
    .locals 2

    const/16 v0, 0x3002

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

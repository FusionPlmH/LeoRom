.class public Lcom/android/systemui/infinity/GalaxyRenderer;
.super Lcom/android/systemui/infinity/GalaxyGyroRenderer;
.source "GalaxyRenderer.java"

# interfaces
.implements Lcom/android/systemui/infinity/GalaxyRendererInterface;


# instance fields
.field private final IMAGE_RATIO:F

.field private final Z_STATIC_DISTANCE:F

.field backgroundScale:F

.field private backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

.field checkScale:F

.field componentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/infinity/GalaxyRenderLifeCycleListener;",
            ">;"
        }
    .end annotation
.end field

.field public height:F

.field isPortrait:Z

.field public mAODBgOff:Z

.field public mContext:Landroid/content/Context;

.field private mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

.field public mRatio:F

.field maxRotateParticleDegree:F

.field minRotateParticleDegree:F

.field mobileKeyboardScale:F

.field private particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

.field public particleTranslationX:F

.field public particleTranslationY:F

.field public particleTranslationZ:F

.field private final projectionMatrix:[F

.field scaleTriangle:F

.field private smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

.field private tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

.field public trangleScale:F

.field public trangleTranslationX:F

.field public trangleTranslationY:F

.field private final viewMatrix:[F

.field private final viewProjectionMatrix:[F

.field public width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Lcom/android/systemui/infinity/theme/ThemeInterface;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->checkScale:F

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->scaleTriangle:F

    const v1, 0x3f75c28f    # 0.96f

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundScale:F

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mobileKeyboardScale:F

    const v1, 0x3ef913e8    # 0.48648f

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->IMAGE_RATIO:F

    const v1, -0x3feccccd    # -2.3f

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->Z_STATIC_DISTANCE:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->isPortrait:Z

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->projectionMatrix:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewProjectionMatrix:[F

    const v1, 0x3ecccccd    # 0.4f

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->maxRotateParticleDegree:F

    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->minRotateParticleDegree:F

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->trangleScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->trangleTranslationX:F

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->trangleTranslationY:F

    const v1, -0x41570a3d    # -0.33f

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleTranslationX:F

    const v1, -0x4247ae14    # -0.09f

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleTranslationY:F

    iput v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleTranslationZ:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->componentList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mAODBgOff:Z

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mContext:Landroid/content/Context;

    invoke-interface {p3, p0}, Lcom/android/systemui/infinity/theme/ThemeInterface;->getTangramSystem(Lcom/android/systemui/infinity/GalaxyRenderer;)Lcom/android/systemui/infinity/tangram/TangramSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-interface {p3, p0}, Lcom/android/systemui/infinity/theme/ThemeInterface;->getParticleSystem(Lcom/android/systemui/infinity/GalaxyRenderer;)Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-interface {p3, p0}, Lcom/android/systemui/infinity/theme/ThemeInterface;->getHomeBackgroundSystem(Lcom/android/systemui/infinity/GalaxyRenderer;)Lcom/android/systemui/infinity/background/BackgroundSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-interface {p3, p0}, Lcom/android/systemui/infinity/theme/ThemeInterface;->getSmokeSystem(Lcom/android/systemui/infinity/GalaxyRenderer;)Lcom/android/systemui/infinity/smoke/SmokeSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->getEasingHelper()Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->componentList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->componentList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->componentList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->componentList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private drawBackground()V
    .locals 13

    iget v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->checkScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mRatio:F

    mul-float/2addr v0, v1

    move v2, v1

    move v3, v2

    const v4, 0x3ef913e8    # 0.48648f

    mul-float/2addr v4, v3

    div-float v5, v0, v4

    iget-object v6, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    iget-object v7, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewProjectionMatrix:[F

    iget-object v8, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->projectionMatrix:[F

    iget-object v9, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    mul-float v10, v4, v5

    mul-float v11, v3, v5

    const v12, -0x3feccccd    # -2.3f

    invoke-virtual/range {v6 .. v12}, Lcom/android/systemui/infinity/background/BackgroundSystem;->draw([F[F[FFFF)V

    return-void
.end method

.method private drawParticles()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewProjectionMatrix:[F

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->projectionMatrix:[F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->draw([F[F[F)V

    return-void
.end method

.method private drawSmoke()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->checkScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v3, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->mRatio:F

    mul-float/2addr v3, v1

    move v4, v1

    move v5, v4

    const v6, 0x3ef913e8    # 0.48648f

    mul-float/2addr v6, v5

    div-float v7, v3, v6

    iget-object v8, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v8, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    const/4 v10, 0x0

    const v11, -0x3feccccd    # -2.3f

    invoke-static {v8, v9, v10, v10, v11}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v8, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    mul-float v10, v6, v7

    mul-float v11, v5, v7

    invoke-static {v8, v9, v10, v11, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v12, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewProjectionMatrix:[F

    iget-object v14, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->projectionMatrix:[F

    iget-object v2, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewMatrix:[F

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    iget-object v8, v0, Lcom/android/systemui/infinity/GalaxyRenderer;->viewProjectionMatrix:[F

    invoke-virtual {v2, v8}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->draw([F)V

    return-void
.end method

.method private drawTriangle()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->projectionMatrix:[F

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->draw([F)V

    return-void
.end method

.method private isMobileKeyboardCovered()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "GalaxyWallpaper"

    const-string v3, "mobileKeyboard is coverd"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public beginSensing()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->beginSensing()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->start()V

    :cond_0
    return-void
.end method

.method public hide(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/background/BackgroundSystem;->hide(I)V

    return-void
.end method

.method public onAODBgOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->hideSmoke()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mAODBgOff:Z

    return-void
.end method

.method public onAutoReset()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v0, v0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentAutoResetRotateValue:F

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentAutoResetRotateValue:F

    const v2, 0x3f19999a    # 0.6f

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeAutoResetRotateValue(FFJ)V

    return-void
.end method

.method protected onChangeGyroData([F[F)V
    .locals 5

    const/4 v0, 0x1

    aget v1, p1, v0

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    iget-boolean v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->isPortrait:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    aget v3, p1, v4

    div-float v1, v3, v2

    :cond_0
    aget v0, p2, v0

    div-float/2addr v0, v2

    iget-boolean v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->isPortrait:Z

    if-nez v3, :cond_1

    aget v3, p2, v4

    div-float v0, v3, v2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    sget-object v3, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    sget-object v3, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setCurrentGyroValue(F)V

    :cond_3
    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_4

    const/high16 v2, -0x40800000    # -1.0f

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    sget-object v4, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-virtual {v3, v2}, Lcom/android/systemui/infinity/tangram/TangramSystem;->setGyroMovement(F)V

    :cond_6
    return-void
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->onDestory()V

    return-void
.end method

.method public onDeviceUnlocked()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->hide(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->hideSmoke()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v0, v0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentDeviceUnlockRotateValue:F

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v2, v2, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentDeviceUnlockRotateValue:F

    const v3, 0x3f19999a    # 0.6f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeDeviceUnlockRotateValue(FFJ)V

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v3, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setStatusBarFadeEnable(Z)V

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v3, v3, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleAlphaValue:F

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeParticleAlpha(FFJ)V

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v3, v3, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticlePlusAlphaValue:F

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeParticlePlusAlpha(FFJ)V

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->minRotateParticleDegree:F

    invoke-virtual {v1, v3}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setMaxRotateDegreeValue(F)V

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->makePaticleSmall()V

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/background/BackgroundSystem;->showHome()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    const/16 v0, 0x4500

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyRenderer;->drawBackground()V

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyRenderer;->drawSmoke()V

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyRenderer;->drawTriangle()V

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyRenderer;->drawParticles()V

    return-void
.end method

.method public onFlick(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v0, v0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentFlickValue:F

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentFlickValue:F

    int-to-float v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeFlickValue(FFJ)V

    return-void
.end method

.method public onScreenBlack()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->hideSmoke()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->hideParticles()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->hide(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->hideAll()V

    return-void
.end method

.method public onScreenOff(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->hide(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->setIsPlugged(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->showSmoke()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v0, v0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOffRotateValue:F

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v2, v2, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOffRotateValue:F

    const v3, 0x3e99999a    # 0.3f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeOffRotateValue(FFJ)V

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v3}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->makePaticleBig()V

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v3, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setStatusBarFadeEnable(Z)V

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeParticleAlpha(FFJ)V

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v7, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v7, v7, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticlePlusAlphaValue:F

    invoke-virtual {v3, v7, v6, v4, v5}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeParticlePlusAlpha(FFJ)V

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v4, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->maxRotateParticleDegree:F

    invoke-virtual {v3, v4}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setMaxRotateDegreeValue(F)V

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v3}, Lcom/android/systemui/infinity/background/BackgroundSystem;->hideAll()V

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mAODBgOff:Z

    return-void
.end method

.method public onScreenOn(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->show()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->smokeSystem:Lcom/android/systemui/infinity/smoke/SmokeSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/smoke/SmokeSystem;->hideSmoke()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setStatusBarFadeEnable(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->maxRotateParticleDegree:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setMaxRotateDegreeValue(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v0, v0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOnRotateValue:F

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOnRotateValue:F

    const v2, 0x3f19999a    # 0.6f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeOnRotateValue(FFJ)V

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v3, v3, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleAlphaValue:F

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeParticleAlpha(FFJ)V

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v3, v3, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticlePlusAlphaValue:F

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->changeParticlePlusAlpha(FFJ)V

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v2}, Lcom/android/systemui/infinity/background/BackgroundSystem;->showLock()V

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v2}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->makePaticleSmall()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    const-string v0, "GalaxyWallpaper"

    const-string/jumbo v1, "onSurfaceChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-ge p2, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->isPortrait:Z

    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mRatio:F

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->projectionMatrix:[F

    const/high16 v2, 0x42340000    # 45.0f

    iget v3, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mRatio:F

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3, v5, v4}, Lcom/android/systemui/infinity/common/MatrixHelper;->perspectiveM([FFFFF)V

    int-to-float v1, p2

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->width:F

    int-to-float v1, p3

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->height:F

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v1, p2}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setParticleSizeDegree(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyRenderer;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3fb33333    # 1.4f

    iput v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mobileKeyboardScale:F

    goto :goto_1

    :cond_2
    iput v5, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mobileKeyboardScale:F

    :goto_1
    nop

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->componentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->componentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/GalaxyRenderLifeCycleListener;

    invoke-interface {v1, p2, p3}, Lcom/android/systemui/infinity/GalaxyRenderLifeCycleListener;->onSurfaceChanged(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->componentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->componentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/GalaxyRenderLifeCycleListener;

    invoke-interface {v1}, Lcom/android/systemui/infinity/GalaxyRenderLifeCycleListener;->onSurfaceCreated()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pauseSensing()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->pauseSensing()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentGyroValue:F

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->setTargetValue(F)Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    iget v1, v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentGyroValue:F

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->setCurrentValue(F)Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->mEasingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->pause()V

    :cond_0
    return-void
.end method

.method public setHomeParticleAlpha()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setParticleAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setParticlePlusAlpha(F)V

    return-void
.end method

.method public setLockParticleAlpha()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setParticleAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->particleSystem:Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->setParticlePlusAlpha(F)V

    return-void
.end method

.method public show(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->backgroundSystem:Lcom/android/systemui/infinity/background/BackgroundSystem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/background/BackgroundSystem;->show(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyRenderer;->tangramSystem:Lcom/android/systemui/infinity/tangram/TangramSystem;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->show()V

    :cond_0
    return-void
.end method

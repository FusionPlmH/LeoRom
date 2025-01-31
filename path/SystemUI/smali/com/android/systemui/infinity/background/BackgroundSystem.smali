.class public abstract Lcom/android/systemui/infinity/background/BackgroundSystem;
.super Ljava/lang/Object;
.source "BackgroundSystem.java"

# interfaces
.implements Lcom/android/systemui/infinity/GalaxyRenderLifeCycleListener;


# instance fields
.field public backgroundHomeAlpha:F

.field backgroundLock:Lcom/android/systemui/infinity/background/LockTextureBackground;

.field public backgroundLockAlpha:F

.field public backgroundLockScale:F

.field private colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

.field final context:Landroid/content/Context;

.field gradientBackground:Lcom/android/systemui/infinity/background/GradientBackground;

.field homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

.field private textureLock:I

.field private textureProgramLock:Lcom/android/systemui/infinity/common/TextureShaderProgram;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    iput v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockScale:F

    iput-object p1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    return-void
.end method


# virtual methods
.method public draw([F[F[FFFF)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    iget v1, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    const/4 v12, 0x0

    cmpl-float v1, v1, v12

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    cmpl-float v1, v1, v12

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    cmpl-float v1, v1, v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    if-eqz v1, :cond_1

    invoke-static {v8, v14}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v8, v14, v12, v12, v11}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget v1, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockScale:F

    mul-float/2addr v1, v9

    iget v2, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockScale:F

    mul-float/2addr v2, v10

    invoke-static {v8, v14, v1, v2, v13}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v3, p2

    move-object v5, v8

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v1, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->textureProgramLock:Lcom/android/systemui/infinity/common/TextureShaderProgram;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/common/TextureShaderProgram;->useProgram()V

    iget-object v1, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->textureProgramLock:Lcom/android/systemui/infinity/common/TextureShaderProgram;

    iget v2, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->textureLock:I

    iget v3, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    invoke-virtual {v1, v7, v2, v3}, Lcom/android/systemui/infinity/common/TextureShaderProgram;->setUniforms([FIF)V

    iget-object v1, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLock:Lcom/android/systemui/infinity/background/LockTextureBackground;

    iget-object v2, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->textureProgramLock:Lcom/android/systemui/infinity/common/TextureShaderProgram;

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/background/LockTextureBackground;->bindData(Lcom/android/systemui/infinity/common/TextureShaderProgram;)V

    iget-object v1, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLock:Lcom/android/systemui/infinity/background/LockTextureBackground;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/background/LockTextureBackground;->draw()V

    :cond_1
    iget v1, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_2

    invoke-static {v8, v14}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v8, v14, v12, v12, v11}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {v8, v14, v9, v10, v13}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v3, p2

    move-object v5, v8

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v1, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/common/ColorShaderProgram;->useProgram()V

    iget-object v1, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

    iget v2, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    invoke-virtual {v1, v7, v2}, Lcom/android/systemui/infinity/common/ColorShaderProgram;->setUniforms([FF)V

    iget-object v1, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->gradientBackground:Lcom/android/systemui/infinity/background/GradientBackground;

    iget-object v2, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/background/GradientBackground;->bindData(Lcom/android/systemui/infinity/common/ColorShaderProgram;)V

    iget-object v1, v0, Lcom/android/systemui/infinity/background/BackgroundSystem;->gradientBackground:Lcom/android/systemui/infinity/background/GradientBackground;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/background/GradientBackground;->draw()V

    :cond_2
    return-void
.end method

.method public abstract getHomeGradientInputColor()[[F
.end method

.method public abstract getHomeGradientInputPosition()[F
.end method

.method public abstract getHomeGridentHeight()F
.end method

.method public abstract getLockBgFileName()Ljava/lang/String;
.end method

.method public abstract getTextureLockId()I
.end method

.method public hide(I)V
    .locals 3

    const-string v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundSystem hide() current alpha(l, h) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    :goto_0
    return-void
.end method

.method public hideAll()V
    .locals 3

    const-string v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundSystem hideAll() current alpha(l, h) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_2
    iget v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    :cond_3
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 11

    new-instance v0, Lcom/android/systemui/infinity/background/GradientBackground;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->getHomeGradientInputPosition()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->getHomeGradientInputColor()[[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->getHomeGridentHeight()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/infinity/background/GradientBackground;-><init>([F[[FF)V

    iput-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->gradientBackground:Lcom/android/systemui/infinity/background/GradientBackground;

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->getTextureLockId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->loadData(I)Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->getLockBgFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->getFrame(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/TangramMapModel;

    move-result-object v1

    new-instance v10, Lcom/android/systemui/infinity/background/LockTextureBackground;

    iget-boolean v3, v1, Lcom/android/systemui/infinity/tangram/TangramMapModel;->rotated:Z

    iget-object v2, v1, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v4, v2, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    iget-object v2, v1, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v5, v2, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    iget-object v2, v1, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v6, v2, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->x:F

    iget-object v2, v1, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v7, v2, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->y:F

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v2, v2, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v8, v2, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v2, v2, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v9, v2, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/infinity/background/LockTextureBackground;-><init>(ZFFFFFF)V

    iput-object v10, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLock:Lcom/android/systemui/infinity/background/LockTextureBackground;

    new-instance v2, Lcom/android/systemui/infinity/common/TextureShaderProgram;

    iget-object v3, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/infinity/common/TextureShaderProgram;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->textureProgramLock:Lcom/android/systemui/infinity/common/TextureShaderProgram;

    new-instance v2, Lcom/android/systemui/infinity/common/ColorShaderProgram;

    iget-object v3, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/infinity/common/ColorShaderProgram;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

    iget-object v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getResourceManager()Lcom/android/systemui/infinity/common/GLResourceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->getTextureLockId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/infinity/common/GLResourceManager;->loadTexture(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->textureLock:I

    return-void
.end method

.method public show(I)V
    .locals 3

    const-string v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundSystem show() current alpha(l, h) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    iput v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    :goto_0
    return-void
.end method

.method public showHome()V
    .locals 6

    const-string v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundSystem showHome() current alpha(l, h) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const-wide/16 v2, 0x258

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v5, Lcom/android/systemui/infinity/background/BackgroundSystem$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/infinity/background/BackgroundSystem$3;-><init>(Lcom/android/systemui/infinity/background/BackgroundSystem;)V

    invoke-virtual {v0, v5}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    :cond_1
    iget v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/background/BackgroundSystem$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/background/BackgroundSystem$4;-><init>(Lcom/android/systemui/infinity/background/BackgroundSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method public showLock()V
    .locals 6

    const-string v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundSystem showLock() current alpha(l, h) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockScale:F

    iget v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const-wide/16 v3, 0x535

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    iget-object v5, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v5}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/infinity/background/BackgroundSystem$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/infinity/background/BackgroundSystem$1;-><init>(Lcom/android/systemui/infinity/background/BackgroundSystem;)V

    invoke-virtual {v2, v5}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v5}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    invoke-virtual {v2, v5}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v2}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    :cond_1
    iget v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_2
    iget v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    iget-object v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/infinity/background/BackgroundSystem$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/infinity/background/BackgroundSystem$2;-><init>(Lcom/android/systemui/infinity/background/BackgroundSystem;)V

    invoke-virtual {v0, v2}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v2}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    invoke-virtual {v0, v2}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    :cond_3
    return-void
.end method

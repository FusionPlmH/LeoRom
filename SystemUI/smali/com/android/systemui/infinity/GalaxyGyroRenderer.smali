.class public abstract Lcom/android/systemui/infinity/GalaxyGyroRenderer;
.super Ljava/lang/Object;
.source "GalaxyGyroRenderer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field animatorManager:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

.field combackAnim:Landroid/animation/ValueAnimator;

.field combackRunnable:Ljava/lang/Runnable;

.field comebackLisener:Landroid/animation/Animator$AnimatorListener;

.field comebackUpdateLisener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field context:Landroid/content/Context;

.field protected currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

.field gyroParticleData:[F

.field gyroTangramData:[F

.field handler:Landroid/os/Handler;

.field initParticleValue:F

.field isAnimating:Z

.field isFirst:Z

.field isPendingAnimation:Z

.field private mIsScreenTurnedOff:Z

.field private mProximitySensorReceiver:Landroid/content/BroadcastReceiver;

.field private mSensor:Landroid/hardware/Sensor;

.field public mSensorListening:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field protected mVisible:Z

.field mapDataManager:Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

.field moveGyroDistance:F

.field resourceManager:Lcom/android/systemui/infinity/common/GLResourceManager;

.field surfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->NONE:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroParticleData:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroTangramData:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isAnimating:Z

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isFirst:Z

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isPendingAnimation:Z

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mIsScreenTurnedOff:Z

    new-instance v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer$1;-><init>(Lcom/android/systemui/infinity/GalaxyGyroRenderer;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer$2;-><init>(Lcom/android/systemui/infinity/GalaxyGyroRenderer;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mProximitySensorReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer$3;-><init>(Lcom/android/systemui/infinity/GalaxyGyroRenderer;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->comebackLisener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer$4;-><init>(Lcom/android/systemui/infinity/GalaxyGyroRenderer;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->comebackUpdateLisener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    invoke-direct {v0, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->animatorManager:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    new-instance v0, Lcom/android/systemui/infinity/common/GLResourceManager;

    invoke-direct {v0, p1}, Lcom/android/systemui/infinity/common/GLResourceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->resourceManager:Lcom/android/systemui/infinity/common/GLResourceManager;

    new-instance v0, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    invoke-direct {v0, p1}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mapDataManager:Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->resourceManager:Lcom/android/systemui/infinity/common/GLResourceManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/common/GLResourceManager;->initialize(Landroid/content/Context;)V

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1002b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->pauseSensing()V

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->beginSensing()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mProximitySensorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/infinity/GalaxyGyroRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->cancelComebackAnimator()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/infinity/GalaxyGyroRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mIsScreenTurnedOff:Z

    return p1
.end method

.method private cancelComebackAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    :cond_0
    return-void
.end method


# virtual methods
.method public beginSensing()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isFirst:Z

    const-string v1, "GyroRender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginSensing()  currentMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , sensor listening = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", screen off = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mIsScreenTurnedOff:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mIsScreenTurnedOff:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    :cond_0
    return-void
.end method

.method public getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->animatorManager:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    return-object v0
.end method

.method public getCurrentMode()Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    return-object v0
.end method

.method public getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mapDataManager:Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    return-object v0
.end method

.method public getResourceManager()Lcom/android/systemui/infinity/common/GLResourceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->resourceManager:Lcom/android/systemui/infinity/common/GLResourceManager;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected abstract onChangeGyroData([F[F)V
.end method

.method public onDestory()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->pauseSensing()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->animatorManager:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->resetAll()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->resourceManager:Lcom/android/systemui/infinity/common/GLResourceManager;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/common/GLResourceManager;->reset()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mProximitySensorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1002b

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isFirst:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    sget-object v5, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v0, v5, :cond_0

    iput-boolean v4, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isFirst:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroTangramData:[F

    const/4 v5, 0x0

    aput v5, v0, v4

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroTangramData:[F

    aput v5, v0, v2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroTangramData:[F

    aput v5, v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    sget-object v5, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v0, v5, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isAnimating:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isAnimating:Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroTangramData:[F

    aget v5, v0, v4

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v4

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroTangramData:[F

    aget v5, v0, v2

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v2

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    aput v5, v0, v2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroTangramData:[F

    aget v5, v0, v1

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v1

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    aput v5, v0, v1

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroParticleData:[F

    aget v5, v0, v4

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v4

    div-float/2addr v6, v3

    add-float/2addr v5, v6

    aput v5, v0, v4

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroParticleData:[F

    aget v4, v0, v2

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    aput v4, v0, v2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroParticleData:[F

    aget v2, v0, v1

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroParticleData:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroTangramData:[F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->onChangeGyroData([F[F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->animatorManager:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->startAnim()V

    :cond_3
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mVisible:Z

    return-void
.end method

.method public pauseSensing()V
    .locals 3

    const-string v0, "GyroRender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pauseSensing() sensor listening = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", screen off = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mIsScreenTurnedOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v0, "GyroRender"

    const-string/jumbo v1, "unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mSensorListening:Z

    :cond_0
    return-void
.end method

.method public setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->currentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->animatorManager:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->BLACK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->setIsSleepMode(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->combackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->cancelComebackAnimator()V

    iput-boolean v2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->isAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->pauseSensing()V

    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->mVisible:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->beginSensing()V

    :cond_3
    return-void
.end method

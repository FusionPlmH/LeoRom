.class Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;
.super Lcom/android/systemui/fingerprint/SemBaseView;
.source "SemFingerprintMaskViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorGuideLayer"
.end annotation


# instance fields
.field private mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;Landroid/os/IBinder;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$700(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/systemui/fingerprint/SemBaseView;-><init>(Landroid/content/Context;Landroid/os/IBinder;Landroid/view/WindowManager;)V

    return-void
.end method

.method public static synthetic lambda$moveIcon$0(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0xa3b

    const v4, 0x8000518

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FP sensor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public handleRotation(ILandroid/graphics/Point;III)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v1, p5, p3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    sub-int/2addr v1, p3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v1, p5, p3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    sub-int/2addr v1, p3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleScreenEvent(Z)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "ic_fingerprint_lockscreen_whitebg_optical.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "ic_fingerprint_lockscreen_whitebg.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "ic_fingerprint_lockscreen_optical.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "ic_fingerprint_lockscreen.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->startIconAnimation(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "ic_fingerprint_lockscreen.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public loadResource()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->updateResource()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x1404

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$800(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x1200000

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSystemUiVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mView:Landroid/view/View;

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".loadResource() called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public moveIcon(II)V
    .locals 4

    int-to-float v0, p1

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mH:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$SensorGuideLayer$q0vElIA5mv8wNLpDEr6t6PHPzOo;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$SensorGuideLayer$q0vElIA5mv8wNLpDEr6t6PHPzOo;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;FF)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1100(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "ic_fingerprint_aod_optical.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "ic_fingerprint_aod.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public updateLayoutSpec()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$900(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$900(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->updateViewLayout()V

    return-void
.end method

.method public updateResource()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$000(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    goto :goto_2

    :cond_0
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sem_fingerprint_icon_bg_optical"

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "sem_fingerprint_icon_bg"

    invoke-static {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sem_fingerprint_bg"

    invoke-static {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->this$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;

    invoke-static {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->access$1000(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "#CC5e5e5e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_2
    const-string v1, "#FF595959"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    :goto_2
    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".updateResource() called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

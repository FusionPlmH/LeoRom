.class Lcom/android/systemui/infinity/GalaxyGyroRenderer$4;
.super Ljava/lang/Object;
.source "GalaxyGyroRenderer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/GalaxyGyroRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/GalaxyGyroRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$4;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$4;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroTangramData:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$4;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget v1, v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->moveGyroDistance:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$4;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroParticleData:[F

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$4;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget v1, v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->initParticleValue:F

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$4;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget v3, v3, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->moveGyroDistance:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$4;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$4;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v1, v1, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroParticleData:[F

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$4;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v2, v2, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->gyroTangramData:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->onChangeGyroData([F[F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyGyroRenderer$4;->this$0:Lcom/android/systemui/infinity/GalaxyGyroRenderer;

    iget-object v0, v0, Lcom/android/systemui/infinity/GalaxyGyroRenderer;->animatorManager:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->startAnim()V

    return-void
.end method

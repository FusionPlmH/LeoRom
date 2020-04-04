.class Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams$1;
.super Ljava/lang/Object;
.source "SemDropShadowImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;->mEndValue:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;->mStartValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;->mStartValue:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->access$002(Lcom/samsung/android/graphics/SemDropShadowImageFilter;F)F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    invoke-static {v0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->access$000(Lcom/samsung/android/graphics/SemDropShadowImageFilter;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    invoke-static {v0}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->access$100(Lcom/samsung/android/graphics/SemDropShadowImageFilter;)V

    const-string v2, "filterParams"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    iget-object v3, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v0, Lcom/samsung/android/graphics/SemImageFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemDropShadowImageFilter animateDistance fraction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemDropShadowImageFilter animateDistance mDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemDropShadowImageFilter$DistanceAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->access$000(Lcom/samsung/android/graphics/SemDropShadowImageFilter;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

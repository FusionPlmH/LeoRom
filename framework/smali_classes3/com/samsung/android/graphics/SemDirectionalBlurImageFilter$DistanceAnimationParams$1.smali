.class Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams$1;
.super Ljava/lang/Object;
.source "SemDirectionalBlurImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;->mEndValue:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;->mStartValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;->mStartValue:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x437a0000    # 250.0f

    invoke-static {v1, v2, v3}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->access$102(Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;F)F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;

    invoke-static {v0}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->access$200(Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;)V

    const-string v2, "filterParams"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;

    iget-object v3, v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mParams:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    const-string v8, "filterData01"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;

    iget-object v9, v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mData1:[F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mParams:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v12, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p2

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    const-string v3, "filterData02"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;

    iget-object v4, v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mData2:[F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->mParams:[F

    aget v0, v0, v1

    float-to-int v7, v0

    const/4 v6, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v0, Lcom/samsung/android/graphics/SemImageFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemDirectionalBlurImageFilter animateDistance fraction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemDirectionalBlurImageFilter animateDistance mDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter$DistanceAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;->access$100(Lcom/samsung/android/graphics/SemDirectionalBlurImageFilter;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

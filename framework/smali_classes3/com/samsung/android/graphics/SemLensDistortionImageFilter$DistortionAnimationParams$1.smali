.class Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams$1;
.super Ljava/lang/Object;
.source "SemLensDistortionImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;->this$0:Lcom/samsung/android/graphics/SemLensDistortionImageFilter;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;->mEndValue:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;->mStartValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;->mStartValue:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->access$000(Lcom/samsung/android/graphics/SemLensDistortionImageFilter;F)V

    const-string v3, "filterParams"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;->this$0:Lcom/samsung/android/graphics/SemLensDistortionImageFilter;

    iget-object v4, v0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->mParams:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v0, Lcom/samsung/android/graphics/SemImageFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemLensDistortionImageFilter animateDistortion fraction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemLensDistortionImageFilter animateDistortion mDistortion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemLensDistortionImageFilter$DistortionAnimationParams;->this$0:Lcom/samsung/android/graphics/SemLensDistortionImageFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemLensDistortionImageFilter;->access$100(Lcom/samsung/android/graphics/SemLensDistortionImageFilter;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
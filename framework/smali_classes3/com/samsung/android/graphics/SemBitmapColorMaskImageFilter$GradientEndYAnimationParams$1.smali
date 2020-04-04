.class Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams$1;
.super Ljava/lang/Object;
.source "SemBitmapColorMaskImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;->mEndValue:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;->mStartValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;->mStartValue:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/16 v2, 0xf

    aput v1, v0, v2

    const-string v4, "filterParams"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v5, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    const/16 v6, 0xf

    const/16 v7, 0xf

    const/4 v8, 0x1

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v0, Lcom/samsung/android/graphics/SemImageFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemBitmapColorMaskImageFilter animateGradientEndY aFraction = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemBitmapColorMaskImageFilter animateGradientEndY endY = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter$GradientEndYAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemBitmapColorMaskImageFilter;->mParams:[F

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

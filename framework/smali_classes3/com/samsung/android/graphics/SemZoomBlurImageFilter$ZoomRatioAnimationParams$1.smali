.class Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams$1;
.super Ljava/lang/Object;
.source "SemZoomBlurImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;->this$0:Lcom/samsung/android/graphics/SemZoomBlurImageFilter;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;->mEndValue:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;->mStartValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;->mStartValue:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->access$000(Lcom/samsung/android/graphics/SemZoomBlurImageFilter;F)V

    const-string v3, "filterParams"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;->this$0:Lcom/samsung/android/graphics/SemZoomBlurImageFilter;

    iget-object v4, v0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->mParams:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    iget-object v0, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;->this$0:Lcom/samsung/android/graphics/SemZoomBlurImageFilter;

    invoke-static {v0}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->access$100(Lcom/samsung/android/graphics/SemZoomBlurImageFilter;)F

    move-result v0

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_H:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    sget-object v1, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_V:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    sget-boolean v1, Lcom/samsung/android/graphics/SemImageFilter;->sLogingEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "HWUI_IMAGE_FILTER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemZoomBlurImageFilter animateZoomRatio fraction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HWUI_IMAGE_FILTER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemZoomBlurImageFilter animateZoomRatio mZoomRatio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemZoomBlurImageFilter$ZoomRatioAnimationParams;->this$0:Lcom/samsung/android/graphics/SemZoomBlurImageFilter;

    invoke-static {v3}, Lcom/samsung/android/graphics/SemZoomBlurImageFilter;->access$200(Lcom/samsung/android/graphics/SemZoomBlurImageFilter;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
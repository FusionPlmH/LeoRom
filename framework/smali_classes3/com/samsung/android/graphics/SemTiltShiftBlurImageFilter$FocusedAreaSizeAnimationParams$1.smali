.class Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;
.super Ljava/lang/Object;
.source "SemTiltShiftBlurImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPassCount:I

.field final synthetic this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->mPassCount:I

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mEndAreaTopY:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mStartAreaTopY:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mStartAreaTopY:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget v3, v3, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mEndAreaBottomY:F

    iget-object v4, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget v4, v4, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mStartAreaBottomY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    iget-object v4, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget v4, v4, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->mStartAreaBottomY:F

    add-float/2addr v3, v4

    invoke-static {v3, v1, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    const-string v2, "HWUI_IMAGE_FILTER"

    const-string v3, "Invalid parameters! Top edge must be gerater than bottom"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-static {v3, v0}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->access$302(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;F)F

    iget-object v3, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-static {v3, v1}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->access$402(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;F)F

    iget-object v3, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mParams:[F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v5, v5, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-static {v5}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->access$300(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;)F

    move-result v5

    sub-float v5, v2, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mParams:[F

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v5, v5, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-static {v5}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->access$400(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;)F

    move-result v5

    sub-float/2addr v2, v5

    aput v2, v3, v4

    const-string v6, "filterParams"

    iget-object v2, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    iget-object v7, v2, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mParams:[F

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object v5, p2

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v2, Lcom/samsung/android/graphics/SemImageFilter;->sLogingEnabled:Z

    if-eqz v2, :cond_1

    const-string v2, "LOG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemTiltShiftBlurImageFilter animateZoomRatio fraction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LOG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemTiltShiftBlurImageFilter animateZoomRatio mFocusedAreaTopY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-static {v4}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->access$300(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LOG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemTiltShiftBlurImageFilter animateZoomRatio mFocusedAreaBottomY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$FocusedAreaSizeAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-static {v4}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->access$400(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

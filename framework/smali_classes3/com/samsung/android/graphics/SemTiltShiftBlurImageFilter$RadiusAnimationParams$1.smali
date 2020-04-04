.class Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;
.super Ljava/lang/Object;
.source "SemTiltShiftBlurImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPassCount:I

.field final synthetic this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->mPassCount:I

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;->mEndValue:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;->mStartValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;->mStartValue:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->access$000(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;F)V

    iget-object v0, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mParams:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;

    iget-object v2, v2, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-static {v2}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->access$100(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;)F

    move-result v8

    iget v2, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->mPassCount:I

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_H:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    sget-object v2, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_V:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_H:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {p2, v2, v8}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    sget-object v2, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_V:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {p2, v2, v8}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_H:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {p2, v2, v8}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    sget-object v2, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_V:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    nop

    :goto_0
    iget v2, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->mPassCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    iget v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->mPassCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->mPassCount:I

    goto :goto_1

    :cond_0
    iput v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->mPassCount:I

    :goto_1
    const-string v3, "filterParams"

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    iget-object v4, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mParams:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    const-string v3, "filterData01"

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    iget-object v4, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mData1:[F

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    const-string v3, "filterData02"

    iget-object v1, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    iget-object v4, v1, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->mData2:[F

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v1, Lcom/samsung/android/graphics/SemImageFilter;->sLogingEnabled:Z

    if-eqz v1, :cond_1

    const-string v1, "LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemTiltShiftBlurImageFilter animateRadius fraction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemTiltShiftBlurImageFilter animateRadius mRadius = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;

    invoke-static {v3}, Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;->access$200(Lcom/samsung/android/graphics/SemTiltShiftBlurImageFilter;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemTiltShiftBlurImageFilter animateRadius stepCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

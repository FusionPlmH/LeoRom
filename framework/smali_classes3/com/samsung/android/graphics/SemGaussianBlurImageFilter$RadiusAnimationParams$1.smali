.class Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;
.super Ljava/lang/Object;
.source "SemGaussianBlurImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsHorizontalPass:Z

.field final synthetic this$1:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->mIsHorizontalPass:Z

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;->mEndValue:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;->mStartValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;->mStartValue:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->access$000(Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;F)V

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mParams:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    const-string v2, "filterParams"

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

    iget-object v3, v1, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mParams:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    const-string v2, "filterData01"

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

    iget-object v3, v1, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mData1:[F

    move-object v1, p2

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    const-string v2, "filterData02"

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

    iget-object v3, v1, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->mData2:[F

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    iget-object v1, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

    invoke-static {v1}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->access$100(Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;)F

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->mIsHorizontalPass:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_H:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    sget-object v2, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_V:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_H:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    sget-object v2, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_DOWN_SAMPLE_RATE_V:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->mIsHorizontalPass:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->mIsHorizontalPass:Z

    sget-boolean v2, Lcom/samsung/android/graphics/SemImageFilter;->sLogingEnabled:Z

    if-eqz v2, :cond_1

    const-string v2, "HWUI_IMAGE_FILTER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemGaussianBlurImageFilter animateRadius fraction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HWUI_IMAGE_FILTER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemGaussianBlurImageFilter animateRadius radius = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter$RadiusAnimationParams;->this$0:Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

    invoke-static {v4}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->access$200(Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HWUI_IMAGE_FILTER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemGaussianBlurImageFilter animateRadius stepCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.class Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams$1;
.super Ljava/lang/Object;
.source "SemBlendingImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;->mEndOpacity:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;->mStartOpacity:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;->mStartOpacity:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->access$002(F)F

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBlendingImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mParams:[F

    invoke-static {}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->access$000()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v4, "filterParams"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;->this$0:Lcom/samsung/android/graphics/SemBlendingImageFilter;

    iget-object v5, v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mParams:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v0, Lcom/samsung/android/graphics/SemImageFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemBlendingImageFilter animateOpacity fraction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemBlendingImageFilter animateOpacity mLayerOpacity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->access$000()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

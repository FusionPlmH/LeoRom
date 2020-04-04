.class Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams$1;
.super Ljava/lang/Object;
.source "SemColorizeImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;->mEndValue:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;->mStartValue:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;->mStartValue:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorizeImageFilter;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v2

    const/4 v3, 0x4

    aput v2, v1, v3

    const-string v5, "filterParams"

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;

    iget-object v1, v1, Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorizeImageFilter;

    iget-object v6, v1, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x1

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v1, Lcom/samsung/android/graphics/SemImageFilter;->sLogingEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "HWUI_IMAGE_FILTER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemColorizeImageFilter animateBlendRatio fraction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HWUI_IMAGE_FILTER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemColorizeImageFilter animateBlendRatio blendRatio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

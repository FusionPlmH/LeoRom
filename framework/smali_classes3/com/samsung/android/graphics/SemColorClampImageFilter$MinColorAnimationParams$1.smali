.class Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;
.super Ljava/lang/Object;
.source "SemColorClampImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget v0, v0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->mEndRed:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->mStartRed:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->mStartRed:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->mEndGreen:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->mStartGreen:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->mStartGreen:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->mEndBlue:F

    iget-object v3, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget v3, v3, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->mStartBlue:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget v3, v3, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->mStartBlue:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget v3, v3, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->mEndAlpha:F

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget v4, v4, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->mStartAlpha:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget v4, v4, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->mStartAlpha:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorClampImageFilter;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static {v0, v6, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v7

    const/4 v8, 0x0

    aput v7, v4, v8

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorClampImageFilter;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v1, v6, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v7

    const/4 v8, 0x1

    aput v7, v4, v8

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorClampImageFilter;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v2, v6, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v7

    const/4 v8, 0x2

    aput v7, v4, v8

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorClampImageFilter;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    invoke-static {v3, v6, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v5

    const/4 v6, 0x3

    aput v5, v4, v6

    const-string v8, "filterParams"

    iget-object v4, p0, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;

    iget-object v4, v4, Lcom/samsung/android/graphics/SemColorClampImageFilter$MinColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemColorClampImageFilter;

    iget-object v9, v4, Lcom/samsung/android/graphics/SemColorClampImageFilter;->mParams:[F

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x4

    move-object v7, p2

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v4, Lcom/samsung/android/graphics/SemImageFilter;->sLogingEnabled:Z

    if-eqz v4, :cond_0

    const-string v4, "HWUI_IMAGE_FILTER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemColorClampImageFilter animateMinColor fraction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HWUI_IMAGE_FILTER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemColorClampImageFilter animateMinColor redColor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HWUI_IMAGE_FILTER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemColorClampImageFilter animateMinColor greenColor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HWUI_IMAGE_FILTER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemColorClampImageFilter animateMinColor blueColor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HWUI_IMAGE_FILTER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemColorClampImageFilter animateMinColor alphaColor = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

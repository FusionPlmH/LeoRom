.class Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;
.super Ljava/lang/Object;
.source "SemDropShadowImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$Animator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsHorizaontalPass:Z

.field final synthetic this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->mIsHorizaontalPass:Z

    return-void
.end method


# virtual methods
.method public animate(FLcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mEndValueRed:F

    iget-object v2, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mStartValueRed:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget v2, v2, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mStartValueRed:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v4, 0x3

    aput v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mEndValueGreen:F

    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget v5, v5, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mStartValueGreen:F

    sub-float/2addr v1, v5

    mul-float/2addr v1, p1

    iget-object v5, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget v5, v5, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mStartValueGreen:F

    add-float/2addr v1, v5

    invoke-static {v1, v3, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v5, 0x4

    aput v1, v0, v5

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mEndValueBlue:F

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget v6, v6, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mStartValueBlue:F

    sub-float/2addr v1, v6

    mul-float/2addr v1, p1

    iget-object v6, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget v6, v6, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mStartValueBlue:F

    add-float/2addr v1, v6

    invoke-static {v1, v3, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v6, 0x5

    aput v1, v0, v6

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget v1, v1, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mEndValueAlpha:F

    iget-object v7, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget v7, v7, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mStartValueAlpha:F

    sub-float/2addr v1, v7

    mul-float/2addr v1, p1

    iget-object v7, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget v7, v7, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->mStartValueAlpha:F

    add-float/2addr v1, v7

    invoke-static {v1, v3, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    const-string v8, "filterParams"

    iget-object v0, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    iget-object v9, v0, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    const/4 v10, 0x3

    const/4 v11, 0x3

    const/4 v12, 0x4

    move-object v7, p2

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->setUniformf(Ljava/lang/String;[FIII)V

    sget-boolean v0, Lcom/samsung/android/graphics/SemImageFilter;->sLogingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemDropShadowImageFilter animateShadowColor fraction = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemDropShadowImageFilter animateShadowColor redColor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemDropShadowImageFilter animateShadowColor greenColor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemDropShadowImageFilter animateShadowColor blueColor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    aget v3, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HWUI_IMAGE_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemDropShadowImageFilter animateShadowColor alphaColor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams$1;->this$1:Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemDropShadowImageFilter$ShadowColorAnimationParams;->this$0:Lcom/samsung/android/graphics/SemDropShadowImageFilter;

    iget-object v3, v3, Lcom/samsung/android/graphics/SemDropShadowImageFilter;->mParams:[F

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

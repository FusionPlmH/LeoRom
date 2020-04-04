.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;
.super Landroid/view/View;
.source "ProgressCircle.java"


# instance fields
.field private currentPercent:F

.field private greyPaint:Landroid/graphics/Paint;

.field private halfStrokeWidth:F

.field private height:I

.field private paint:Landroid/graphics/Paint;

.field private previousPercent:F

.field private progressAnimator:Landroid/animation/ValueAnimator;

.field private radius:F

.field private targetPercent:F

.field private width:I


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->currentPercent:F

    const v1, 0x40666666    # 3.6f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->width:I

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->height:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->height:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->radius:F

    iget-object v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->greyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    iget v7, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    sub-float v8, v1, v2

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    sub-float v9, v1, v2

    iget-object v10, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->greyPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    :goto_0
    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    sub-float v5, v1, v2

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->halfStrokeWidth:F

    sub-float v6, v1, v2

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v8, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public setPercent(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->targetPercent:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->currentPercent:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->previousPercent:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/ProgressCircle;->setAlpha(F)V

    :goto_0
    return-void
.end method

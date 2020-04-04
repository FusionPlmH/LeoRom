.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;
.super Landroid/view/View;
.source "CompleteView.java"


# instance fields
.field private currentRatio:F

.field private halfStrokeWidth:F

.field private height:I

.field private paint:Landroid/graphics/Paint;

.field private width:I


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->currentRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->halfStrokeWidth:F

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->halfStrokeWidth:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->halfStrokeWidth:F

    sub-float v4, v0, v1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->height:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->halfStrokeWidth:F

    sub-float v5, v0, v1

    iget-object v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setRatio(F)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->currentRatio:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->width:I

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->height:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->invalidate(IIII)V

    return-void
.end method

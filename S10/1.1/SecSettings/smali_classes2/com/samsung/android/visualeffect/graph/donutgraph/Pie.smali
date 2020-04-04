.class public Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
.super Ljava/lang/Object;
.source "Pie.java"


# instance fields
.field private center_x:I

.field private center_y:I

.field private colorValue:Ljava/lang/String;

.field private finalStartAngle:F

.field private finalSweepAngle:F

.field private line_x:I

.field private line_y:I

.field private paint:Landroid/graphics/Paint;

.field private radius:I

.field private startAngle:F

.field private sweepAngle:F


# virtual methods
.method public getCenterX()I
    .locals 7

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalStartAngle:F

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    add-float/2addr v3, v5

    float-to-double v2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->center_x:I

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->center_x:I

    return v4
.end method

.method public getCenterY()I
    .locals 7

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalStartAngle:F

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    add-float/2addr v3, v5

    float-to-double v2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->center_y:I

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->center_y:I

    return v4
.end method

.method public getColorValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->colorValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalStartAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalStartAngle:F

    return v0
.end method

.method public getFinalSweepAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->finalSweepAngle:F

    return v0
.end method

.method public getLineX()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->line_x:I

    return v0
.end method

.method public getLineY()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->line_y:I

    return v0
.end method

.method public getModifiedCenterX(FF)I
    .locals 7

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p2, v0

    add-float/2addr v1, p1

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    div-float/2addr v5, v0

    add-float/2addr v3, v5

    float-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-int v0, v5

    return v0
.end method

.method public getModifiedCenterY(FF)I
    .locals 7

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p2, v0

    add-float/2addr v1, p1

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->radius:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    div-float/2addr v5, v0

    add-float/2addr v3, v5

    float-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-int v0, v5

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getStartAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->startAngle:F

    return v0
.end method

.method public getSweepAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->sweepAngle:F

    return v0
.end method

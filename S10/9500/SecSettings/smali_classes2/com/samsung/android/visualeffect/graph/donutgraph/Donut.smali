.class public Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
.super Landroid/view/View;
.source "Donut.java"


# instance fields
.field private addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

.field private backDonutPaint:Landroid/graphics/Paint;

.field private bmp:Landroid/graphics/Bitmap;

.field private donutBitmap:Landroid/graphics/Bitmap;

.field private donutCanvas:Landroid/graphics/Canvas;

.field private donutLeft:I

.field private donutRadius:I

.field private donutTop:I

.field private drawBackgroundCircle:Z

.field private isCleanPiePhase:Z

.field private lineColor:Ljava/lang/String;

.field private linePaint:Landroid/graphics/Paint;

.field private lineValue:F

.field private mIsDirectionRTL:Z

.field private mLinePath:Landroid/graphics/Path;

.field private final mirrorCanvas:Landroid/graphics/Canvas;

.field private mirroredBmp:Landroid/graphics/Bitmap;

.field private pointPaint:Landroid/graphics/Paint;

.field private pointRadius:F

.field private pointValue:F

.field private rectf:Landroid/graphics/RectF;

.field private thisPie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private drawAddedPie(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;)V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalStartAngle()F

    move-result v0

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v2, v0, v2

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getSweepAngle()F

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterX()I

    move-result v2

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    add-int/2addr v2, v3

    iget-object v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterY()I

    move-result v3

    iget v4, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    add-int/2addr v3, v4

    iget-object v4, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineX()I

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v5

    if-nez v1, :cond_0

    iget-object v6, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v6

    const/high16 v7, 0x42f00000    # 120.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    iget-object v6, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterX(FF)I

    move-result v6

    iget v9, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v6, v9

    iget v9, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    add-int v2, v6, v9

    iget-object v6, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6, v8, v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterY(FF)I

    move-result v6

    iget v7, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v6, v7

    iget v7, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    add-int v3, v6, v7

    :cond_0
    const/4 v6, -0x1

    if-eq v4, v6, :cond_4

    if-ne v5, v6, :cond_1

    goto/16 :goto_3

    :cond_1
    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    int-to-float v8, v2

    sub-int v9, v5, v3

    int-to-double v9, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    double-to-float v9, v9

    add-float/2addr v8, v9

    int-to-float v9, v5

    sub-int v10, v4, v2

    int-to-float v10, v10

    iget v11, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    mul-float/2addr v10, v11

    int-to-float v11, v2

    add-float/2addr v10, v11

    if-lt v5, v3, :cond_2

    int-to-float v11, v3

    sub-int v12, v4, v2

    int-to-float v12, v12

    iget v13, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-float v12, v12

    add-float/2addr v11, v12

    :goto_1
    move/from16 v16, v11

    goto :goto_2

    :cond_2
    int-to-float v11, v3

    sub-int v12, v4, v2

    int-to-float v12, v12

    iget v13, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-float v12, v12

    sub-float/2addr v11, v12

    goto :goto_1

    :goto_2
    cmpg-float v11, v10, v8

    if-gez v11, :cond_3

    int-to-float v13, v2

    int-to-float v14, v3

    iget-object v11, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v15, v10

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    iget-object v11, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->rewind()V

    iget-object v11, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    int-to-float v12, v2

    int-to-float v13, v3

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v11, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v11, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v11, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    int-to-float v12, v5

    invoke-virtual {v11, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v11, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    iget-object v12, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    invoke-virtual {v13, v11, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v13, p1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v13, p1

    return-void
.end method

.method private drawPie(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->rectf:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getStartAngle()F

    move-result v2

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float v4, v2, v4

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getSweepAngle()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawPoint(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineX()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v1

    const/high16 v2, 0x42f00000    # 120.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterX(FF)I

    move-result v3

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5, v4, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterY(FF)I

    move-result v2

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointRadius:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterX()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterY()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointRadius:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private setBackgroundDonut(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getColorValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getColorValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mIsDirectionRTL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPie(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPoint(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawAddedPie(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawLine(Landroid/graphics/Canvas;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPie(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPoint(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawAddedPie(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawLine(Landroid/graphics/Canvas;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDirectionRTL(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mIsDirectionRTL:Z

    return-void
.end method

.method public setLineColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    return-void
.end method

.class public Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;
.super Landroid/view/View;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteDrawView"
.end annotation


# instance fields
.field private circleColor:I

.field private numberColor:I

.field private rectColor:I

.field sx:I

.field sy:I

.field final synthetic this$0:Lcom/samsung/android/settings/location/SatelliteView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/location/SatelliteView;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$900()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1000()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->sx:I

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1100()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1000()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->sy:I

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->adajustColorForTheme()V

    return-void
.end method

.method private adajustColorForTheme()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v0}, Lcom/samsung/android/settings/location/SatelliteView;->access$1300(Lcom/samsung/android/settings/location/SatelliteView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v1, -0x10000

    if-eqz v0, :cond_0

    const/16 v0, 0x7f

    const/16 v2, 0xff

    invoke-static {v2, v0, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->circleColor:I

    iput v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->numberColor:I

    invoke-static {v2, v0, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->rectColor:I

    goto :goto_0

    :cond_0
    const v0, -0xffff01

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->circleColor:I

    iput v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->numberColor:I

    const v0, -0xff0001

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->rectColor:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getPoint()[D
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [D

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$300()D

    move-result-wide v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v1, v3

    const/4 v5, 0x0

    aput-wide v1, v0, v5

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$200()D

    move-result-wide v1

    mul-double/2addr v1, v3

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "GPS_SATELLITE_VIEW"

    const-string v2, "in satellite draw view onDraw()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v1}, Lcom/samsung/android/settings/location/SatelliteView;->access$1400(Lcom/samsung/android/settings/location/SatelliteView;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    move-object v8, v1

    const/high16 v1, -0x1000000

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$900()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1100()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$900()I

    move-result v3

    int-to-double v3, v3

    const-wide v9, 0x4008cccccccccccdL    # 3.1

    div-double/2addr v3, v9

    double-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$900()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1100()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$900()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ffc000000000000L    # 1.75

    mul-double/2addr v3, v5

    div-double/2addr v3, v9

    double-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$900()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1100()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$900()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    mul-double/2addr v3, v5

    div-double/2addr v3, v9

    double-to-float v3, v3

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$900()I

    move-result v1

    int-to-float v2, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1100()I

    move-result v1

    int-to-double v3, v1

    const-wide v5, 0x4000cccccccccccdL    # 2.1

    mul-double/2addr v3, v5

    const-wide v5, 0x4013666666666666L    # 4.85

    div-double/2addr v3, v5

    double-to-float v3, v3

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$900()I

    move-result v1

    int-to-float v4, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1100()I

    move-result v1

    int-to-double v12, v1

    const-wide v14, 0x401e666666666666L    # 7.6

    mul-double/2addr v12, v14

    div-double/2addr v12, v5

    double-to-float v5, v12

    move-object v1, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$900()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v1, v3

    div-double/2addr v1, v9

    double-to-float v2, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1100()I

    move-result v1

    int-to-float v3, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$900()I

    move-result v1

    int-to-double v4, v1

    const-wide v12, 0x4017666666666666L    # 5.85

    mul-double/2addr v4, v12

    div-double/2addr v4, v9

    double-to-float v4, v4

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1100()I

    move-result v1

    int-to-float v5, v1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v9, v1

    :goto_0
    move v10, v2

    sget v1, Lcom/samsung/android/settings/location/SatelliteView;->mNoOfSat:I

    if-ge v10, v1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1500()[F

    move-result-object v1

    aget v1, v1, v10

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1600()[I

    move-result-object v1

    aget v1, v1, v10

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$900()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1700()[I

    move-result-object v5

    aget v5, v5, v10

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1100()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1200()I

    move-result v3

    int-to-double v3, v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1600()[I

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$900()I

    move-result v2

    aput v2, v1, v10

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1700()[I

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1100()I

    move-result v2

    aput v2, v1, v10

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->circleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1600()[I

    move-result-object v1

    aget v1, v1, v10

    int-to-float v1, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1700()[I

    move-result-object v2

    aget v2, v2, v10

    int-to-float v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->numberColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v1, 0x9

    if-gt v10, v1, :cond_1

    add-int/lit8 v1, v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1600()[I

    move-result-object v2

    aget v2, v2, v10

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1700()[I

    move-result-object v3

    aget v3, v3, v10

    add-int/lit8 v3, v3, 0xd

    int-to-float v3, v3

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1600()[I

    move-result-object v2

    aget v2, v2, v10

    add-int/lit8 v2, v2, -0xf

    int-to-float v2, v2

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1700()[I

    move-result-object v3

    aget v3, v3, v10

    add-int/lit8 v3, v3, 0xd

    int-to-float v3, v3

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->rectColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v1}, Lcom/samsung/android/settings/location/SatelliteView;->access$1900(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v1

    add-int/lit8 v2, v9, 0x1

    mul-int/2addr v1, v2

    iget-object v2, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v2}, Lcom/samsung/android/settings/location/SatelliteView;->access$2000(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v2

    mul-int/2addr v2, v9

    add-int/2addr v1, v2

    int-to-float v2, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1100()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1200()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v3}, Lcom/samsung/android/settings/location/SatelliteView;->access$2100(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v1, v3

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1500()[F

    move-result-object v3

    aget v3, v3, v10

    float-to-int v3, v3

    sub-int/2addr v1, v3

    int-to-float v3, v1

    iget-object v1, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v1}, Lcom/samsung/android/settings/location/SatelliteView;->access$1900(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v1

    iget-object v4, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v4}, Lcom/samsung/android/settings/location/SatelliteView;->access$2000(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v4, v9, 0x1

    mul-int/2addr v1, v4

    int-to-float v4, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1100()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1200()I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v12}, Lcom/samsung/android/settings/location/SatelliteView;->access$2100(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v5, v12

    double-to-int v5, v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->numberColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v2}, Lcom/samsung/android/settings/location/SatelliteView;->access$2200(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-int/lit8 v1, v10, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v2}, Lcom/samsung/android/settings/location/SatelliteView;->access$1900(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v2

    add-int/lit8 v3, v9, 0x1

    mul-int/2addr v2, v3

    int-to-double v2, v2

    iget-object v4, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v4}, Lcom/samsung/android/settings/location/SatelliteView;->access$2000(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v4

    int-to-double v4, v4

    int-to-double v12, v9

    const-wide/high16 v14, 0x3fd0000000000000L    # 0.25

    add-double/2addr v12, v14

    mul-double/2addr v4, v12

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1100()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1200()I

    move-result v4

    add-int/2addr v3, v4

    const-wide v4, 0x3fc3333333333333L    # 0.15

    iget-object v6, v0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v6}, Lcom/samsung/android/settings/location/SatelliteView;->access$2100(Lcom/samsung/android/settings/location/SatelliteView;)I

    move-result v6

    int-to-double v12, v6

    mul-double/2addr v4, v12

    double-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    :cond_2
    add-int/lit8 v2, v10, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public setPoint(DD)V
    .locals 5

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1200()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1200()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, p1

    float-to-double v3, v0

    div-double p1, v1, v3

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1200()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, p3

    float-to-double v3, v0

    div-double p3, v1, v3

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$900()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1000()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    add-double/2addr v1, p1

    double-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->sx:I

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1100()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->access$1000()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    add-double/2addr v1, p3

    double-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->sy:I

    return-void
.end method

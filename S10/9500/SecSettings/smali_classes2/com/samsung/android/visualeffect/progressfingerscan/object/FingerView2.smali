.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;
.super Landroid/view/View;
.source "FingerView2.java"


# instance fields
.field private final ANIMATION_DURATION:I

.field private final COLOR_COMPLETE:I

.field private final TAG:Ljava/lang/String;

.field private currentPercent:F

.field private fingerColor:I

.field private greyColor:I

.field private height:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private measure1:Landroid/graphics/PathMeasure;

.field private measure2:Landroid/graphics/PathMeasure;

.field private measure3:Landroid/graphics/PathMeasure;

.field private measure4:Landroid/graphics/PathMeasure;

.field private measure5:Landroid/graphics/PathMeasure;

.field private paint:Landroid/graphics/Paint;

.field private path1:Landroid/graphics/Path;

.field private path2:Landroid/graphics/Path;

.field private path3:Landroid/graphics/Path;

.field private path4:Landroid/graphics/Path;

.field private path5:Landroid/graphics/Path;

.field private previousPercent:F

.field private targetPercent:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->TAG:Ljava/lang/String;

    const/16 v2, 0x12c

    iput v2, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->ANIMATION_DURATION:I

    const v2, -0xff8b2c

    iput v2, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->COLOR_COMPLETE:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->targetPercent:F

    iput v2, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->currentPercent:F

    iput v2, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->previousPercent:F

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    const/16 v5, 0xb

    if-lt v3, v5, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    move/from16 v3, p5

    iput v3, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->greyColor:I

    iput v1, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->fingerColor:I

    move/from16 v5, p2

    iput v5, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->width:I

    move/from16 v6, p3

    iput v6, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->height:I

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->paint:Landroid/graphics/Paint;

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->paint:Landroid/graphics/Paint;

    const/high16 v8, 0x41d80000    # 27.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->paint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    const/high16 v7, 0x3f800000    # 1.0f

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v7, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path1:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path1:Landroid/graphics/Path;

    const/high16 v8, 0x43750000    # 245.0f

    const v9, 0x438e8000    # 285.0f

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path1:Landroid/graphics/Path;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, -0x3e280000    # -27.0f

    const/high16 v14, -0x3eb00000    # -13.0f

    const/high16 v15, -0x3e300000    # -26.0f

    const/high16 v16, -0x3e580000    # -21.0f

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path1:Landroid/graphics/Path;

    const/high16 v8, -0x3e600000    # -20.0f

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v9, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path1:Landroid/graphics/Path;

    const/4 v10, 0x0

    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v13, -0x3d520000    # -87.0f

    const/high16 v14, 0x425c0000    # 55.0f

    const/high16 v15, -0x3e680000    # -19.0f

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path1:Landroid/graphics/Path;

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path2:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path2:Landroid/graphics/Path;

    const/high16 v8, 0x437b0000    # 251.0f

    const/high16 v9, 0x431f0000    # 159.0f

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path2:Landroid/graphics/Path;

    const/4 v12, 0x0

    const/high16 v13, 0x42480000    # 50.0f

    const/high16 v14, 0x41200000    # 10.0f

    const/high16 v15, 0x426c0000    # 59.0f

    const/high16 v16, 0x42140000    # 37.0f

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path2:Landroid/graphics/Path;

    const/high16 v8, 0x429a0000    # 77.0f

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v9, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path2:Landroid/graphics/Path;

    const/4 v10, 0x0

    const/high16 v12, -0x3de00000    # -40.0f

    const/high16 v13, 0x42f40000    # 122.0f

    const/high16 v14, -0x3d020000    # -127.0f

    const/high16 v15, 0x41880000    # 17.0f

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path2:Landroid/graphics/Path;

    const/high16 v9, -0x3db80000    # -50.0f

    invoke-virtual {v7, v2, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path3:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path3:Landroid/graphics/Path;

    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v10, 0x43b90000    # 370.0f

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v11, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path3:Landroid/graphics/Path;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, -0x3d4c0000    # -90.0f

    const/high16 v15, -0x3f400000    # -6.0f

    const/high16 v16, -0x3d240000    # -110.0f

    const/high16 v17, -0x3d600000    # -80.0f

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path3:Landroid/graphics/Path;

    const/high16 v9, -0x3d7e0000    # -65.0f

    invoke-virtual {v7, v2, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v10, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path3:Landroid/graphics/Path;

    const/4 v11, 0x0

    const/high16 v13, 0x42340000    # 45.0f

    const/high16 v14, -0x3cb30000    # -205.0f

    const/high16 v15, 0x434b0000    # 203.0f

    const/high16 v16, -0x3de00000    # -40.0f

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path3:Landroid/graphics/Path;

    const/high16 v9, 0x42960000    # 75.0f

    invoke-virtual {v7, v2, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path4:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path4:Landroid/graphics/Path;

    const/high16 v9, 0x436b0000    # 235.0f

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path4:Landroid/graphics/Path;

    const/high16 v13, 0x42dc0000    # 110.0f

    const/high16 v14, 0x40800000    # 4.0f

    const/high16 v15, 0x43150000    # 149.0f

    const/high16 v16, 0x42b40000    # 90.0f

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path4:Landroid/graphics/Path;

    const/high16 v8, 0x42e60000    # 115.0f

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v9, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path4:Landroid/graphics/Path;

    const/4 v10, 0x0

    const/high16 v12, -0x3eb00000    # -13.0f

    const/high16 v13, 0x43020000    # 130.0f

    const/high16 v14, -0x3d140000    # -118.0f

    const/high16 v15, 0x43020000    # 130.0f

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path4:Landroid/graphics/Path;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, -0x3cef0000    # -145.0f

    const/16 v20, 0x0

    const/high16 v21, -0x3ce00000    # -160.0f

    const/high16 v22, -0x3d2e0000    # -105.0f

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path4:Landroid/graphics/Path;

    const/high16 v8, -0x3d380000    # -100.0f

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path5:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path5:Landroid/graphics/Path;

    const v8, 0x43838000    # 263.0f

    const/high16 v9, 0x43e40000    # 456.0f

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path5:Landroid/graphics/Path;

    const/high16 v8, -0x3de00000    # -40.0f

    invoke-virtual {v7, v8, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v9, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path5:Landroid/graphics/Path;

    const/high16 v12, -0x3d240000    # -110.0f

    const/high16 v13, -0x3ee00000    # -10.0f

    const/high16 v14, -0x3ce90000    # -151.0f

    const/high16 v15, -0x3d120000    # -119.0f

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path5:Landroid/graphics/Path;

    const/high16 v8, -0x3cf90000    # -135.0f

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v9, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path5:Landroid/graphics/Path;

    const/high16 v12, 0x40a00000    # 5.0f

    const/high16 v13, -0x3cea0000    # -150.0f

    const/high16 v14, 0x432a0000    # 170.0f

    const/high16 v15, -0x3cd90000    # -167.0f

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path5:Landroid/graphics/Path;

    const/high16 v19, 0x43200000    # 160.0f

    const/high16 v20, 0x40e00000    # 7.0f

    const/high16 v21, 0x43360000    # 182.0f

    const/high16 v22, 0x43020000    # 130.0f

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path5:Landroid/graphics/Path;

    const/high16 v8, 0x42d20000    # 105.0f

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    new-instance v2, Landroid/graphics/PathMeasure;

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path1:Landroid/graphics/Path;

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v2, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure1:Landroid/graphics/PathMeasure;

    new-instance v2, Landroid/graphics/PathMeasure;

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path2:Landroid/graphics/Path;

    invoke-direct {v2, v7, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v2, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure2:Landroid/graphics/PathMeasure;

    new-instance v2, Landroid/graphics/PathMeasure;

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path3:Landroid/graphics/Path;

    invoke-direct {v2, v7, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v2, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure3:Landroid/graphics/PathMeasure;

    new-instance v2, Landroid/graphics/PathMeasure;

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path4:Landroid/graphics/Path;

    invoke-direct {v2, v7, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v2, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure4:Landroid/graphics/PathMeasure;

    new-instance v2, Landroid/graphics/PathMeasure;

    iget-object v7, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->path5:Landroid/graphics/Path;

    invoke-direct {v2, v7, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v2, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure5:Landroid/graphics/PathMeasure;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->setAnimator()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->fingerColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->currentPercent:F

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->currentPercent:F

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->previousPercent:F

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->targetPercent:F

    return v0
.end method

.method private getPercent(F)F
    .locals 3

    move v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    move v0, v1

    return v0
.end method

.method private setAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->greyColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->currentPercent:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->currentPercent:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->getPercent(F)F

    move-result v2

    cmpl-float v3, v2, v1

    const/4 v4, 0x1

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure1:Landroid/graphics/PathMeasure;

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure1:Landroid/graphics/PathMeasure;

    mul-float v6, v3, v2

    invoke-virtual {v5, v1, v6, v0, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :cond_0
    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->currentPercent:F

    const v5, 0x3dcccccd    # 0.1f

    sub-float/2addr v3, v5

    const v5, 0x40d33333    # 6.6f

    mul-float/2addr v3, v5

    invoke-direct {p0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->getPercent(F)F

    move-result v3

    cmpl-float v5, v3, v1

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure2:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure2:Landroid/graphics/PathMeasure;

    mul-float v7, v5, v3

    invoke-virtual {v6, v1, v7, v0, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :cond_1
    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->currentPercent:F

    const/high16 v6, 0x3e800000    # 0.25f

    sub-float/2addr v5, v6

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->getPercent(F)F

    move-result v5

    cmpl-float v6, v5, v1

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure3:Landroid/graphics/PathMeasure;

    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure3:Landroid/graphics/PathMeasure;

    mul-float v8, v6, v5

    invoke-virtual {v7, v1, v8, v0, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :cond_2
    iget v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->currentPercent:F

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    const v7, 0x40533333    # 3.3f

    mul-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->getPercent(F)F

    move-result v6

    cmpl-float v7, v6, v1

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure4:Landroid/graphics/PathMeasure;

    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure4:Landroid/graphics/PathMeasure;

    mul-float v9, v7, v6

    invoke-virtual {v8, v1, v9, v0, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :cond_3
    iget v7, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->currentPercent:F

    const v8, 0x3f4ccccd    # 0.8f

    sub-float/2addr v7, v8

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->getPercent(F)F

    move-result v7

    cmpl-float v8, v7, v1

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure5:Landroid/graphics/PathMeasure;

    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->measure5:Landroid/graphics/PathMeasure;

    mul-float v10, v8, v7

    invoke-virtual {v9, v1, v10, v0, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :cond_4
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public setDuration(I)V
    .locals 3

    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_0
    return-void
.end method

.method public setPaintAlpha(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->width:I

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->height:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->invalidate(IIII)V

    return-void
.end method

.method public setPercent(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->targetPercent:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->currentPercent:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->previousPercent:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

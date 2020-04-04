.class public Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;
.super Ljava/lang/Object;
.source "ElasticEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private amplitude:F

.field private period:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;->amplitude:F

    iput p2, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;->period:F

    return-void
.end method

.method private inout(FFF)F
    .locals 16

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-nez v3, :cond_0

    return v2

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_1

    return v3

    :cond_1
    cmpl-float v5, p3, v2

    if-nez v5, :cond_2

    const v4, 0x3ee66667    # 0.45000002f

    goto :goto_0

    :cond_2
    move/from16 v4, p3

    :goto_0
    cmpl-float v2, p2, v2

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    if-eqz v2, :cond_4

    cmpg-float v2, p2, v3

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    float-to-double v7, v4

    div-double/2addr v7, v5

    div-float v2, v3, p2

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-float v2, v7

    move/from16 v1, p2

    goto :goto_2

    :cond_4
    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    div-float v2, v4, v2

    :goto_2
    nop

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v0, p1, v7

    cmpg-float v7, v0, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    if-gez v7, :cond_5

    const-wide/high16 v10, -0x4020000000000000L    # -0.5

    float-to-double v12, v1

    const/high16 v7, 0x41200000    # 10.0f

    sub-float v3, v0, v3

    move v0, v3

    mul-float/2addr v7, v3

    float-to-double v14, v7

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v12, v7

    sub-float v3, v0, v2

    float-to-double v7, v3

    mul-double/2addr v7, v5

    float-to-double v5, v4

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v12, v5

    mul-double/2addr v10, v12

    double-to-float v3, v10

    return v3

    :cond_5
    float-to-double v10, v1

    const/high16 v7, -0x3ee00000    # -10.0f

    sub-float v3, v0, v3

    move v0, v3

    mul-float/2addr v7, v3

    float-to-double v12, v7

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v10, v7

    sub-float v3, v0, v2

    float-to-double v7, v3

    mul-double/2addr v7, v5

    float-to-double v5, v4

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v10, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v5

    double-to-float v3, v10

    return v3
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;->amplitude:F

    iget v1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;->period:F

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseInOut;->inout(FFF)F

    move-result v0

    return v0
.end method

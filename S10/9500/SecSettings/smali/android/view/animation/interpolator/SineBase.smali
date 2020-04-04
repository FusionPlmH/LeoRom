.class Landroid/view/animation/interpolator/SineBase;
.super Ljava/lang/Object;
.source "SineBase.java"


# direct methods
.method static getInterpolation(F[[F)F
    .locals 12

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, p0, v0

    array-length v2, p1

    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    array-length v4, p1

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    array-length v4, p1

    add-int/lit8 v3, v4, -0x1

    :cond_0
    int-to-float v4, v3

    int-to-float v6, v2

    div-float v6, v0, v6

    mul-float/2addr v4, v6

    sub-float v4, v1, v4

    int-to-float v6, v2

    mul-float/2addr v4, v6

    aget-object v6, p1, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v9, v6, v8

    const/high16 v10, 0x40000000    # 2.0f

    sub-float v11, v0, v4

    mul-float/2addr v10, v11

    aget v5, v6, v5

    aget v11, v6, v8

    sub-float/2addr v5, v11

    mul-float/2addr v10, v5

    const/4 v5, 0x2

    aget v5, v6, v5

    aget v8, v6, v8

    sub-float/2addr v5, v8

    mul-float/2addr v5, v4

    add-float/2addr v10, v5

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    mul-float/2addr v0, v9

    add-float/2addr v7, v0

    return v7
.end method

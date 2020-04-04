.class public Lcom/samsung/android/graphics/SemMathUtils;
.super Ljava/lang/Object;
.source "SemMathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(FFF)F
    .locals 1

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static clamp(III)I
    .locals 1

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static compare(FF)Z
    .locals 2

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x322bcc77    # 1.0E-8f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static computeCosineCoeffs(F[F[FI)I
    .locals 17

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    array-length v4, v1

    if-lt v4, v3, :cond_4

    array-length v4, v2

    if-lt v4, v3, :cond_4

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpg-float v6, v0, v5

    const/4 v7, 0x0

    if-gtz v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v1, v7

    aput v6, v2, v7

    goto :goto_2

    :cond_0
    float-to-int v6, v0

    const/4 v8, 0x1

    invoke-static {v6, v8, v3}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(III)I

    move-result v4

    const/4 v6, 0x0

    int-to-float v9, v4

    div-float v9, v0, v9

    const/high16 v10, 0x3f000000    # 0.5f

    div-float/2addr v10, v0

    const v11, 0x40490fdb    # (float)Math.PI

    div-float/2addr v11, v0

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v13, v12, v10

    aput v13, v1, v7

    aput v5, v2, v7

    const/4 v13, 0x0

    nop

    :goto_0
    if-ge v8, v4, :cond_1

    int-to-float v14, v8

    mul-float v13, v14, v9

    float-to-double v14, v10

    mul-float v5, v13, v11

    move/from16 v16, v13

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v14, v12

    float-to-double v12, v10

    add-double/2addr v14, v12

    double-to-float v5, v14

    aput v5, v1, v8

    aput v16, v2, v8

    aget v5, v1, v8

    add-float/2addr v6, v5

    add-int/lit8 v8, v8, 0x1

    move/from16 v13, v16

    const/4 v5, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v6, v5

    aget v5, v1, v7

    add-float/2addr v6, v5

    nop

    :goto_1
    move v5, v7

    if-ge v5, v4, :cond_2

    aget v7, v1, v5

    div-float/2addr v7, v6

    aput v7, v1, v5

    add-int/lit8 v7, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    move v5, v4

    :goto_3
    if-ge v5, v3, :cond_3

    const/4 v6, 0x0

    aput v6, v1, v5

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    return v4

    :cond_4
    const-string v4, "HWUI_IMAGE_FILTER"

    const-string v5, "Kernel size is bigger then coeffs array size. Index out of range error occurs!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
.end method

.method public static computeGaussianCoeffs(F[F[FI)I
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    array-length v3, v0

    if-lt v3, v2, :cond_6

    array-length v3, v1

    if-lt v3, v2, :cond_6

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpg-float v5, p0, v4

    const/4 v6, 0x0

    if-gtz v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v0, v6

    aput v5, v1, v6

    goto/16 :goto_3

    :cond_0
    const v5, 0x3f19999a    # 0.6f

    mul-float v7, p0, v5

    float-to-int v3, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v3, v2, :cond_1

    int-to-float v9, v3

    div-float v7, p0, v9

    move v3, v2

    goto :goto_0

    :cond_1
    if-ge v3, v8, :cond_2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const v7, 0x3fd6c12b

    :goto_0
    const v9, 0x3e99999a    # 0.3f

    mul-float v9, v9, p0

    add-float/2addr v9, v5

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    float-to-double v4, v9

    mul-double/2addr v12, v4

    div-double/2addr v10, v12

    float-to-double v4, v7

    mul-double/2addr v10, v4

    double-to-float v4, v10

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v11, v10, v9

    mul-float/2addr v11, v9

    div-float/2addr v5, v11

    const/4 v11, 0x0

    int-to-float v12, v3

    div-float v12, p0, v12

    aput v4, v0, v6

    const/4 v13, 0x0

    aput v13, v1, v6

    const/4 v13, 0x0

    nop

    :goto_1
    if-ge v8, v3, :cond_3

    add-float/2addr v13, v12

    move v15, v7

    float-to-double v6, v4

    move/from16 v16, v11

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    mul-float v17, v13, v13

    mul-float v14, v17, v5

    move/from16 v18, v4

    move/from16 v19, v5

    float-to-double v4, v14

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v6, v4

    double-to-float v4, v6

    aput v4, v0, v8

    aget v4, v0, v8

    add-float v11, v16, v4

    aput v13, v1, v8

    add-int/lit8 v8, v8, 0x1

    move v7, v15

    move/from16 v4, v18

    move/from16 v5, v19

    const/4 v6, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_1

    :cond_3
    move/from16 v18, v4

    move/from16 v19, v5

    move v15, v7

    move/from16 v16, v11

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v11, v16, v4

    const/4 v4, 0x0

    aget v5, v0, v4

    add-float/2addr v11, v5

    nop

    :goto_2
    if-ge v4, v3, :cond_4

    aget v5, v0, v4

    div-float/2addr v5, v11

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_5

    const/4 v5, 0x0

    aput v5, v0, v4

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    return v3

    :cond_6
    const-string v3, "HWUI_IMAGE_FILTER"

    const-string v4, "Kernel size is bigger then coeffs array size. Index out of range error occurs!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

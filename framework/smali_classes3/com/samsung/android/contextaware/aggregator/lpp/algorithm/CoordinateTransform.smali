.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;
.super Ljava/lang/Object;
.source "CoordinateTransform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enu2llh([D[D)[D
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2xyz([D[D)[D

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2llh([D)[D

    move-result-object v0

    return-object v0
.end method

.method public static enu2xyz([D[D)[D
    .locals 24

    const/4 v0, 0x3

    new-array v1, v0, [D

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2llh([D)[D

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    const/4 v8, 0x1

    aget-wide v9, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    move-wide v15, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    move-object/from16 v17, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    new-instance v7, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v8, 0x3

    invoke-direct {v7, v8, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    move-object/from16 v18, v4

    neg-double v3, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    const/4 v3, 0x1

    invoke-virtual {v7, v8, v3, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    const/4 v4, 0x2

    move-wide/from16 v19, v9

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v4, v9, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    neg-double v9, v11

    mul-double/2addr v9, v0

    invoke-virtual {v7, v3, v8, v9, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    neg-double v9, v11

    mul-double/2addr v9, v5

    invoke-virtual {v7, v3, v3, v9, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    invoke-virtual {v7, v3, v4, v13, v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    mul-double v9, v13, v0

    invoke-virtual {v7, v4, v8, v9, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    mul-double v9, v13, v5

    invoke-virtual {v7, v4, v3, v9, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    invoke-virtual {v7, v4, v4, v11, v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    aget-wide v9, p1, v8

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v22

    add-double v9, v9, v22

    aput-wide v9, v17, v8

    aget-wide v9, p1, v3

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v22

    add-double v9, v9, v22

    aput-wide v9, v17, v3

    const/4 v3, 0x2

    aget-wide v9, p1, v3

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v21

    add-double v9, v9, v21

    aput-wide v9, v17, v3

    return-object v17
.end method

.method public static llh2enu([D[D)[D
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [D

    new-array v2, v0, [D

    invoke-static {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    aget-wide v6, v3, v5

    aput-wide v6, v1, v5

    aget-wide v6, v4, v5

    aput-wide v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2enu([D[D)[D

    move-result-object v0

    return-object v0
.end method

.method public static llh2xyz([D)[D
    .locals 40

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    const/4 v7, 0x2

    aget-wide v8, p0, v7

    const-wide v10, 0x415854a640000000L    # 6378137.0

    const-wide v12, 0x41583fc4141bda51L    # 6356752.3142

    div-double v14, v12, v10

    div-double v16, v12, v10

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v8

    sub-double v7, v16, v14

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v26

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    mul-double v28, v7, v7

    sub-double v28, v16, v28

    mul-double v30, v28, v26

    move-wide/from16 v32, v5

    add-double v4, v16, v30

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v30, v10, v22

    div-double v30, v30, v4

    mul-double v34, v18, v22

    mul-double v34, v34, v20

    add-double v30, v30, v34

    mul-double v34, v10, v24

    div-double v34, v34, v4

    mul-double v36, v18, v24

    mul-double v36, v36, v20

    add-double v34, v34, v36

    mul-double v36, v7, v7

    mul-double v36, v36, v14

    mul-double v36, v36, v14

    move-wide/from16 v38, v2

    sub-double v1, v16, v36

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double v16, v10, v28

    mul-double v16, v16, v14

    div-double v16, v16, v1

    mul-double v36, v18, v14

    add-double v16, v16, v36

    const/4 v3, 0x0

    aput-wide v30, v0, v3

    const/4 v3, 0x1

    aput-wide v34, v0, v3

    const/4 v3, 0x2

    aput-wide v16, v0, v3

    return-object v0
.end method

.method public static xyz2enu([D[D)[D
    .locals 24

    const/4 v0, 0x3

    new-array v1, v0, [D

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    new-instance v4, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v5, p1

    invoke-direct {v4, v5, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    new-instance v6, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->uminus()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v13

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v6

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2llh([D)[D

    move-result-object v8

    aget-wide v10, v8, v9

    aget-wide v12, v8, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move-object/from16 v16, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    move-wide/from16 v17, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    move-object/from16 v19, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    new-instance v11, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v20, v2

    const/4 v2, 0x3

    invoke-direct {v11, v2, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    move-object v2, v11

    move-object/from16 v21, v4

    neg-double v3, v9

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v11, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    const/4 v3, 0x1

    invoke-virtual {v2, v11, v3, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    const/4 v4, 0x2

    move-wide/from16 v22, v12

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v11, v4, v12, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    neg-double v12, v14

    mul-double/2addr v12, v0

    invoke-virtual {v2, v3, v11, v12, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    neg-double v12, v14

    mul-double/2addr v12, v9

    invoke-virtual {v2, v3, v3, v12, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    mul-double v12, v7, v0

    invoke-virtual {v2, v4, v11, v12, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    mul-double v12, v7, v9

    invoke-virtual {v2, v4, v3, v12, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    invoke-virtual {v2, v4, v4, v14, v15}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    invoke-virtual {v2, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v12

    invoke-virtual {v12, v11, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v12

    aput-wide v12, v19, v11

    invoke-virtual {v2, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v12

    invoke-virtual {v12, v3, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v12

    aput-wide v12, v19, v3

    invoke-virtual {v2, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v3

    invoke-virtual {v3, v4, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v11

    aput-wide v11, v19, v4

    return-object v19
.end method

.method public static xyz2llh([D)[D
    .locals 66

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    const/4 v4, 0x1

    aget-wide v5, p0, v4

    const/4 v7, 0x2

    aget-wide v8, p0, v7

    mul-double v10, v2, v2

    mul-double v12, v5, v5

    mul-double v14, v8, v8

    const-wide v16, 0x415854a640000000L    # 6378137.0

    const-wide v18, 0x41583fc4141bda51L    # 6356752.3142

    div-double v20, v18, v16

    div-double v22, v18, v16

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v2

    sub-double v1, v22, v20

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double v20, v18, v18

    mul-double v26, v1, v1

    div-double v28, v16, v18

    mul-double v28, v28, v1

    move-wide/from16 v30, v5

    add-double v4, v10, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double v5, v3, v3

    mul-double v32, v16, v16

    mul-double v34, v18, v18

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x404b000000000000L    # 54.0

    mul-double v34, v34, v20

    mul-double v34, v34, v14

    sub-double v36, v22, v26

    mul-double v36, v36, v14

    add-double v36, v5, v36

    mul-double v38, v26, v32

    sub-double v36, v36, v38

    mul-double v38, v26, v26

    mul-double v38, v38, v34

    mul-double v38, v38, v5

    mul-double v40, v36, v36

    mul-double v40, v40, v36

    div-double v38, v38, v40

    add-double v40, v22, v38

    mul-double v42, v38, v38

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    mul-double v46, v44, v38

    move-wide/from16 v48, v8

    add-double v7, v42, v46

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double v7, v40, v7

    move-wide/from16 v50, v1

    const-wide v1, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    div-double v7, v22, v1

    add-double/2addr v7, v1

    add-double v7, v7, v22

    const-wide/high16 v40, 0x4008000000000000L    # 3.0

    mul-double v40, v40, v7

    div-double v7, v22, v1

    add-double/2addr v7, v1

    add-double v7, v7, v22

    mul-double v40, v40, v7

    mul-double v40, v40, v36

    mul-double v40, v40, v36

    div-double v7, v34, v40

    mul-double v40, v44, v26

    mul-double v40, v40, v26

    mul-double v40, v40, v7

    move-wide/from16 v52, v1

    add-double v1, v22, v40

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double v40, v7, v26

    move-wide/from16 v54, v10

    mul-double v9, v40, v3

    neg-double v9, v9

    add-double v40, v22, v1

    div-double v9, v9, v40

    mul-double v40, v16, v16

    div-double v40, v40, v44

    div-double v42, v22, v1

    add-double v42, v22, v42

    mul-double v40, v40, v42

    sub-double v42, v22, v26

    mul-double v42, v42, v7

    mul-double v42, v42, v14

    add-double v46, v22, v1

    mul-double v46, v46, v1

    div-double v42, v42, v46

    sub-double v40, v40, v42

    mul-double v42, v7, v5

    div-double v42, v42, v44

    move-wide/from16 v56, v1

    sub-double v1, v40, v42

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    add-double/2addr v9, v1

    mul-double v1, v26, v9

    sub-double v1, v3, v1

    mul-double v40, v26, v9

    sub-double v40, v3, v40

    mul-double v1, v1, v40

    move-wide/from16 v58, v5

    add-double v5, v1, v14

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    sub-double v40, v22, v26

    mul-double v40, v40, v14

    move-wide/from16 v60, v7

    add-double v7, v1, v40

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double v40, v20, v48

    mul-double v42, v16, v7

    div-double v40, v40, v42

    mul-double v42, v16, v7

    div-double v42, v20, v42

    sub-double v22, v22, v42

    mul-double v22, v22, v5

    mul-double v42, v28, v28

    mul-double v42, v42, v40

    add-double v42, v48, v42

    move-wide/from16 v62, v1

    div-double v1, v42, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    move-wide/from16 v64, v3

    div-double v3, v30, v24

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    const-wide/16 v42, 0x0

    cmpl-double v11, v24, v42

    if-ltz v11, :cond_0

    move-wide/from16 v42, v3

    :goto_0
    goto :goto_1

    :cond_0
    cmpg-double v11, v24, v42

    const-wide v44, 0x400921fb54442d18L    # Math.PI

    if-gez v11, :cond_1

    cmpl-double v11, v30, v42

    if-ltz v11, :cond_1

    add-double v42, v44, v3

    goto :goto_0

    :cond_1
    sub-double v42, v3, v44

    :goto_1
    const/4 v11, 0x0

    aput-wide v1, v0, v11

    const/4 v11, 0x1

    aput-wide v42, v0, v11

    const/4 v11, 0x2

    aput-wide v22, v0, v11

    return-object v0
.end method

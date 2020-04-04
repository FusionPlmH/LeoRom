.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;
.super Ljava/lang/Object;
.source "MatrixSingularValueDecomposition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private U:[[D

.field private V:[[D

.field private m:I

.field private n:I

.field private s:[D


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 73

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v2

    iput v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v3, v3, [D

    iput-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    filled-new-array {v3, v2}, [I

    move-result-object v3

    const-class v5, D

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    filled-new-array {v3, v5}, [I

    move-result-object v3

    const-class v5, D

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    new-array v3, v3, [D

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    new-array v5, v5, [D

    const/4 v6, 0x1

    const/4 v7, 0x1

    iget v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    sub-int/2addr v8, v4

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    add-int/lit8 v9, v9, -0x2

    iget v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v11, v10

    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    const-wide/16 v15, 0x0

    if-ge v11, v12, :cond_14

    if-ge v11, v8, :cond_4

    iget-object v12, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aput-wide v15, v12, v11

    move v12, v11

    :goto_1
    iget v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v12, v10, :cond_0

    iget-object v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v13, v4, v11

    aget-object v4, v1, v12

    move-object/from16 v20, v5

    aget-wide v4, v4, v11

    invoke-static {v13, v14, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v4

    aput-wide v4, v10, v11

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v20

    const/4 v4, 0x1

    const/4 v10, 0x0

    goto :goto_1

    :cond_0
    move-object/from16 v20, v5

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v4, v4, v11

    cmpl-double v4, v4, v15

    if-eqz v4, :cond_3

    aget-object v4, v1, v11

    aget-wide v4, v4, v11

    cmpg-double v4, v4, v15

    if-gez v4, :cond_1

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v12, v5, v11

    neg-double v12, v12

    aput-wide v12, v4, v11

    :cond_1
    move v4, v11

    :goto_2
    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v4, v5, :cond_2

    aget-object v5, v1, v4

    aget-wide v12, v5, v11

    iget-object v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v21, v10, v11

    div-double v12, v12, v21

    aput-wide v12, v5, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    aget-object v4, v1, v11

    aget-wide v12, v4, v11

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v12, v12, v18

    aput-wide v12, v4, v11

    :cond_3
    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v12, v5, v11

    neg-double v12, v12

    aput-wide v12, v4, v11

    goto :goto_3

    :cond_4
    move-object/from16 v20, v5

    :goto_3
    add-int/lit8 v4, v11, 0x1

    :goto_4
    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v4, v5, :cond_7

    if-ge v11, v8, :cond_6

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v12, v5, v11

    cmpl-double v5, v12, v15

    if-eqz v5, :cond_6

    const-wide/16 v12, 0x0

    move v5, v11

    :goto_5
    iget v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v5, v10, :cond_5

    aget-object v10, v1, v5

    aget-wide v21, v10, v11

    aget-object v10, v1, v5

    aget-wide v23, v10, v4

    mul-double v21, v21, v23

    add-double v12, v12, v21

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    neg-double v14, v12

    aget-object v5, v1, v11

    aget-wide v21, v5, v11

    div-double v14, v14, v21

    move v5, v11

    :goto_6
    iget v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v5, v10, :cond_6

    aget-object v10, v1, v5

    aget-wide v12, v10, v4

    aget-object v16, v1, v5

    aget-wide v21, v16, v11

    mul-double v21, v21, v14

    add-double v12, v12, v21

    aput-wide v12, v10, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    aget-object v5, v1, v11

    aget-wide v12, v5, v4

    aput-wide v12, v3, v4

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v15, 0x0

    goto :goto_4

    :cond_7
    if-ge v11, v8, :cond_8

    const/4 v4, 0x1

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_7
    and-int/2addr v4, v6

    if-eqz v4, :cond_9

    move v4, v11

    :goto_8
    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v4, v5, :cond_9

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v5, v5, v4

    aget-object v10, v1, v4

    aget-wide v12, v10, v11

    aput-wide v12, v5, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    if-ge v11, v9, :cond_13

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v11

    add-int/lit8 v4, v11, 0x1

    :goto_9
    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v4, v5, :cond_a

    aget-wide v12, v3, v11

    aget-wide v14, v3, v4

    invoke-static {v12, v13, v14, v15}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v12

    aput-wide v12, v3, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_a
    aget-wide v4, v3, v11

    const-wide/16 v12, 0x0

    cmpl-double v4, v4, v12

    if-eqz v4, :cond_d

    add-int/lit8 v4, v11, 0x1

    aget-wide v4, v3, v4

    cmpg-double v4, v4, v12

    if-gez v4, :cond_b

    aget-wide v4, v3, v11

    neg-double v4, v4

    aput-wide v4, v3, v11

    :cond_b
    add-int/lit8 v4, v11, 0x1

    :goto_a
    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v4, v5, :cond_c

    aget-wide v12, v3, v4

    aget-wide v14, v3, v11

    div-double/2addr v12, v14

    aput-wide v12, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_c
    add-int/lit8 v4, v11, 0x1

    aget-wide v12, v3, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    aput-wide v12, v3, v4

    :cond_d
    aget-wide v4, v3, v11

    neg-double v4, v4

    aput-wide v4, v3, v11

    add-int/lit8 v4, v11, 0x1

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v4, v5, :cond_12

    aget-wide v4, v3, v11

    const-wide/16 v12, 0x0

    cmpl-double v4, v4, v12

    if-eqz v4, :cond_12

    add-int/lit8 v4, v11, 0x1

    :goto_b
    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v4, v5, :cond_e

    aput-wide v12, v20, v4

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v12, 0x0

    goto :goto_b

    :cond_e
    add-int/lit8 v4, v11, 0x1

    :goto_c
    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v4, v5, :cond_10

    add-int/lit8 v5, v11, 0x1

    :goto_d
    iget v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v5, v10, :cond_f

    aget-wide v12, v20, v5

    aget-wide v14, v3, v4

    aget-object v10, v1, v5

    aget-wide v18, v10, v4

    mul-double v14, v14, v18

    add-double/2addr v12, v14

    aput-wide v12, v20, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_10
    add-int/lit8 v4, v11, 0x1

    :goto_e
    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v4, v5, :cond_12

    aget-wide v12, v3, v4

    neg-double v12, v12

    add-int/lit8 v5, v11, 0x1

    aget-wide v14, v3, v5

    div-double/2addr v12, v14

    add-int/lit8 v5, v11, 0x1

    :goto_f
    iget v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v5, v10, :cond_11

    aget-object v10, v1, v5

    aget-wide v14, v10, v4

    aget-wide v18, v20, v5

    mul-double v18, v18, v12

    add-double v14, v14, v18

    aput-wide v14, v10, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_12
    if-eqz v7, :cond_13

    add-int/lit8 v4, v11, 0x1

    :goto_10
    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v4, v5, :cond_13

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v5, v5, v4

    aget-wide v12, v3, v4

    aput-wide v12, v5, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_13
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v20

    const/4 v4, 0x1

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_14
    move-object/from16 v20, v5

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    const/4 v10, 0x1

    add-int/2addr v5, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v8, v5, :cond_15

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-object v10, v1, v8

    aget-wide v10, v10, v8

    aput-wide v10, v5, v8

    :cond_15
    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v5, v4, :cond_16

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v10, v4, -0x1

    const-wide/16 v11, 0x0

    aput-wide v11, v5, v10

    :cond_16
    add-int/lit8 v5, v9, 0x1

    if-ge v5, v4, :cond_17

    aget-object v5, v1, v9

    add-int/lit8 v10, v4, -0x1

    aget-wide v10, v5, v10

    aput-wide v10, v3, v9

    :cond_17
    add-int/lit8 v5, v4, -0x1

    const-wide/16 v10, 0x0

    aput-wide v10, v3, v5

    if-eqz v6, :cond_21

    move v5, v8

    :goto_11
    if-ge v5, v2, :cond_19

    const/4 v10, 0x0

    :goto_12
    iget v11, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v10, v11, :cond_18

    iget-object v11, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v11, v11, v10

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v5

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_18
    iget-object v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v10, v10, v5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    aput-wide v11, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_19
    add-int/lit8 v5, v8, -0x1

    :goto_13
    if-ltz v5, :cond_21

    iget-object v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v10, v10, v5

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_1e

    add-int/lit8 v10, v5, 0x1

    :goto_14
    if-ge v10, v2, :cond_1c

    const-wide/16 v11, 0x0

    move-wide v12, v11

    move v11, v5

    :goto_15
    iget v14, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v11, v14, :cond_1a

    iget-object v14, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v14, v14, v11

    aget-wide v14, v14, v5

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v1, v1, v11

    aget-wide v21, v1, v10

    mul-double v14, v14, v21

    add-double/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v27

    goto :goto_15

    :cond_1a
    move-object/from16 v27, v1

    neg-double v14, v12

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v1, v1, v5

    aget-wide v21, v1, v5

    div-double v14, v14, v21

    move v1, v5

    :goto_16
    iget v11, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v1, v11, :cond_1b

    iget-object v11, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v11, v11, v1

    aget-wide v12, v11, v10

    move/from16 v28, v8

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v8, v8, v1

    aget-wide v21, v8, v5

    mul-double v21, v21, v14

    add-double v12, v12, v21

    aput-wide v12, v11, v10

    add-int/lit8 v1, v1, 0x1

    move/from16 v8, v28

    goto :goto_16

    :cond_1b
    move/from16 v28, v8

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v27

    goto :goto_14

    :cond_1c
    move-object/from16 v27, v1

    move/from16 v28, v8

    move v1, v5

    :goto_17
    iget v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v1, v8, :cond_1d

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v8, v8, v1

    iget-object v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v10, v10, v1

    aget-wide v10, v10, v5

    neg-double v10, v10

    aput-wide v10, v8, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_1d
    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v1, v1, v5

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v8, v8, v5

    aget-wide v10, v8, v5

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v12

    aput-wide v10, v1, v5

    const/4 v1, 0x0

    :goto_18
    add-int/lit8 v8, v5, -0x1

    if-ge v1, v8, :cond_20

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v8, v8, v1

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_1e
    move-object/from16 v27, v1

    move/from16 v28, v8

    const/4 v1, 0x0

    :goto_19
    iget v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v1, v8, :cond_1f

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v8, v8, v1

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_1f
    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v1, v1, v5

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v1, v5

    :cond_20
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v1, v27

    move/from16 v8, v28

    goto/16 :goto_13

    :cond_21
    move-object/from16 v27, v1

    move/from16 v28, v8

    if-eqz v7, :cond_26

    iget v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    :goto_1a
    if-ltz v1, :cond_26

    if-ge v1, v9, :cond_24

    aget-wide v10, v3, v1

    const-wide/16 v12, 0x0

    cmpl-double v5, v10, v12

    if-eqz v5, :cond_24

    add-int/lit8 v5, v1, 0x1

    :goto_1b
    if-ge v5, v2, :cond_24

    const-wide/16 v10, 0x0

    add-int/lit8 v8, v1, 0x1

    :goto_1c
    iget v12, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v8, v12, :cond_22

    iget-object v12, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v12, v12, v8

    aget-wide v12, v12, v1

    iget-object v14, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v14, v14, v8

    aget-wide v14, v14, v5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_22
    neg-double v12, v10

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    add-int/lit8 v14, v1, 0x1

    aget-object v8, v8, v14

    aget-wide v14, v8, v1

    div-double/2addr v12, v14

    add-int/lit8 v8, v1, 0x1

    :goto_1d
    iget v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v8, v10, :cond_23

    iget-object v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v10, v10, v8

    aget-wide v14, v10, v5

    iget-object v11, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v11, v11, v8

    aget-wide v21, v11, v1

    mul-double v21, v21, v12

    add-double v14, v14, v21

    aput-wide v14, v10, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_24
    const/4 v5, 0x0

    :goto_1e
    iget v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v5, v8, :cond_25

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v8, v8, v5

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_25
    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v5, v5, v1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v5, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    :cond_26
    add-int/lit8 v1, v4, -0x1

    const/4 v5, 0x0

    const-wide/high16 v10, -0x3fb6000000000000L    # -52.0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v14, -0x3f71d00000000000L    # -966.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    :goto_1f
    if-lez v4, :cond_46

    add-int/lit8 v8, v4, -0x2

    :goto_20
    const/4 v12, -0x1

    if-lt v8, v12, :cond_29

    if-ne v8, v12, :cond_27

    nop

    move/from16 v34, v1

    move/from16 v31, v2

    move/from16 v33, v5

    move/from16 v32, v6

    goto :goto_21

    :cond_27
    aget-wide v12, v3, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    move/from16 v31, v2

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move/from16 v33, v5

    move/from16 v32, v6

    aget-wide v5, v2, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v16, v8, 0x1

    move/from16 v34, v1

    aget-wide v1, v2, v16

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    add-double/2addr v5, v1

    mul-double/2addr v5, v10

    add-double/2addr v5, v14

    cmpg-double v1, v12, v5

    if-gtz v1, :cond_28

    const-wide/16 v1, 0x0

    aput-wide v1, v3, v8

    goto :goto_21

    :cond_28
    add-int/lit8 v8, v8, -0x1

    move/from16 v2, v31

    move/from16 v6, v32

    move/from16 v5, v33

    move/from16 v1, v34

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    goto :goto_20

    :cond_29
    move/from16 v34, v1

    move/from16 v31, v2

    move/from16 v33, v5

    move/from16 v32, v6

    :goto_21
    add-int/lit8 v1, v4, -0x2

    if-ne v8, v1, :cond_2a

    const/4 v1, 0x4

    move v2, v1

    goto :goto_27

    :cond_2a
    add-int/lit8 v1, v4, -0x1

    :goto_22
    if-lt v1, v8, :cond_2f

    if-ne v1, v8, :cond_2b

    goto :goto_25

    :cond_2b
    if-eq v1, v4, :cond_2c

    aget-wide v5, v3, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    goto :goto_23

    :cond_2c
    const-wide/16 v5, 0x0

    :goto_23
    add-int/lit8 v2, v8, 0x1

    if-eq v1, v2, :cond_2d

    add-int/lit8 v2, v1, -0x1

    aget-wide v12, v3, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    goto :goto_24

    :cond_2d
    const-wide/16 v12, 0x0

    :goto_24
    add-double/2addr v5, v12

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v12, v2, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    mul-double v18, v10, v5

    add-double v18, v14, v18

    cmpg-double v2, v12, v18

    if-gtz v2, :cond_2e

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const-wide/16 v12, 0x0

    aput-wide v12, v2, v1

    goto :goto_25

    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    :cond_2f
    :goto_25
    if-ne v1, v8, :cond_30

    const/4 v2, 0x3

    :goto_26
    goto :goto_27

    :cond_30
    add-int/lit8 v2, v4, -0x1

    if-ne v1, v2, :cond_31

    const/4 v2, 0x1

    goto :goto_26

    :cond_31
    const/4 v2, 0x2

    move v8, v1

    :goto_27
    const/4 v1, 0x1

    add-int/2addr v8, v1

    packed-switch v2, :pswitch_data_0

    move-object/from16 v72, v3

    move/from16 v62, v7

    move/from16 v37, v9

    move-wide/from16 v50, v10

    move-wide/from16 v60, v14

    move/from16 v36, v34

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    goto/16 :goto_38

    :pswitch_0
    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v5, v1, v8

    const-wide/16 v12, 0x0

    cmpg-double v1, v5, v12

    if-gtz v1, :cond_33

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v5, v5, v8

    cmpg-double v5, v5, v12

    if-gez v5, :cond_32

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v5, v5, v8

    neg-double v5, v5

    goto :goto_28

    :cond_32
    const-wide/16 v5, 0x0

    :goto_28
    aput-wide v5, v1, v8

    if-eqz v7, :cond_33

    const/4 v1, 0x0

    :goto_29
    move/from16 v5, v34

    if-gt v1, v5, :cond_34

    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v6, v6, v1

    iget-object v12, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v12, v12, v1

    aget-wide v12, v12, v8

    neg-double v12, v12

    aput-wide v12, v6, v8

    add-int/lit8 v1, v1, 0x1

    move/from16 v34, v5

    goto :goto_29

    :cond_33
    move/from16 v5, v34

    :cond_34
    :goto_2a
    if-ge v8, v5, :cond_38

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v12, v1, v8

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v6, v8, 0x1

    aget-wide v18, v1, v6

    cmpl-double v1, v12, v18

    if-ltz v1, :cond_35

    nop

    move/from16 v35, v2

    move/from16 v36, v5

    goto/16 :goto_2d

    :cond_35
    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v12, v1, v8

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v16, v8, 0x1

    aget-wide v18, v6, v16

    aput-wide v18, v1, v8

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v6, v8, 0x1

    aput-wide v12, v1, v6

    if-eqz v7, :cond_36

    iget v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    if-ge v8, v1, :cond_36

    const/4 v1, 0x0

    :goto_2b
    iget v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v1, v6, :cond_36

    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v6, v6, v1

    add-int/lit8 v16, v8, 0x1

    aget-wide v12, v6, v16

    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v6, v6, v1

    add-int/lit8 v16, v8, 0x1

    move/from16 v35, v2

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v2, v2, v1

    aget-wide v18, v2, v8

    aput-wide v18, v6, v16

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v2, v2, v1

    aput-wide v12, v2, v8

    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v35

    goto :goto_2b

    :cond_36
    move/from16 v35, v2

    if-eqz v32, :cond_37

    iget v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v8, v1, :cond_37

    const/4 v1, 0x0

    :goto_2c
    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v1, v2, :cond_37

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v2, v2, v1

    add-int/lit8 v6, v8, 0x1

    aget-wide v12, v2, v6

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v2, v2, v1

    add-int/lit8 v6, v8, 0x1

    move/from16 v36, v5

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v5, v5, v1

    aget-wide v18, v5, v8

    aput-wide v18, v2, v6

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v2, v2, v1

    aput-wide v12, v2, v8

    add-int/lit8 v1, v1, 0x1

    move/from16 v5, v36

    goto :goto_2c

    :cond_37
    move/from16 v36, v5

    add-int/lit8 v8, v8, 0x1

    nop

    move/from16 v2, v35

    move/from16 v5, v36

    goto/16 :goto_2a

    :cond_38
    move/from16 v35, v2

    move/from16 v36, v5

    :goto_2d
    const/4 v1, 0x0

    add-int/lit8 v4, v4, -0x1

    move v5, v1

    move-object/from16 v72, v3

    move/from16 v62, v7

    move/from16 v37, v9

    move-wide/from16 v50, v10

    move-wide/from16 v60, v14

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    goto/16 :goto_39

    :pswitch_1
    move/from16 v35, v2

    move/from16 v36, v34

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v2, v4, -0x1

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v6, v4, -0x2

    aget-wide v5, v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    add-int/lit8 v5, v4, -0x2

    aget-wide v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v5, v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aget-wide v5, v3, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v6, v4, -0x1

    aget-wide v5, v5, v6

    div-double/2addr v5, v1

    iget-object v12, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v13, v4, -0x2

    aget-wide v12, v12, v13

    div-double/2addr v12, v1

    add-int/lit8 v16, v4, -0x2

    aget-wide v18, v3, v16

    div-double v18, v18, v1

    move/from16 v37, v9

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v21, v9, v8

    div-double v21, v21, v1

    aget-wide v23, v3, v8

    div-double v23, v23, v1

    add-double v38, v12, v5

    sub-double v40, v12, v5

    mul-double v38, v38, v40

    mul-double v40, v18, v18

    add-double v38, v38, v40

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    div-double v38, v38, v29

    mul-double v40, v5, v18

    mul-double v42, v5, v18

    mul-double v40, v40, v42

    const-wide/16 v42, 0x0

    const-wide/16 v25, 0x0

    cmpl-double v9, v38, v25

    if-eqz v9, :cond_39

    const/4 v9, 0x1

    goto :goto_2e

    :cond_39
    const/4 v9, 0x0

    :goto_2e
    cmpl-double v16, v40, v25

    if-eqz v16, :cond_3a

    const/16 v16, 0x1

    goto :goto_2f

    :cond_3a
    const/16 v16, 0x0

    :goto_2f
    or-int v9, v9, v16

    if-eqz v9, :cond_3c

    mul-double v44, v38, v38

    move-wide/from16 v46, v1

    add-double v1, v44, v40

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/16 v25, 0x0

    cmpg-double v9, v38, v25

    if-gez v9, :cond_3b

    neg-double v1, v1

    :cond_3b
    add-double v42, v38, v1

    div-double v42, v40, v42

    goto :goto_30

    :cond_3c
    move-wide/from16 v46, v1

    :goto_30
    add-double v1, v21, v5

    sub-double v44, v21, v5

    mul-double v1, v1, v44

    add-double v1, v1, v42

    mul-double v44, v21, v23

    move-wide/from16 v48, v5

    move-wide/from16 v50, v10

    move-wide/from16 v9, v44

    move-wide v5, v1

    move v1, v8

    :goto_31
    add-int/lit8 v2, v4, -0x1

    if-ge v1, v2, :cond_40

    invoke-static {v5, v6, v9, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v44

    div-double v52, v5, v44

    move-wide/from16 v54, v12

    div-double v11, v9, v44

    if-eq v1, v8, :cond_3d

    add-int/lit8 v2, v1, -0x1

    aput-wide v44, v3, v2

    :cond_3d
    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v56, v2, v1

    mul-double v56, v56, v52

    aget-wide v58, v3, v1

    mul-double v58, v58, v11

    add-double v5, v56, v58

    aget-wide v56, v3, v1

    mul-double v56, v56, v52

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v58, v2, v1

    mul-double v58, v58, v11

    sub-double v56, v56, v58

    aput-wide v56, v3, v1

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v13, v1, 0x1

    aget-wide v56, v2, v13

    mul-double v9, v11, v56

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v13, v1, 0x1

    move-wide/from16 v60, v14

    iget-object v14, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v15, v1, 0x1

    aget-wide v14, v14, v15

    mul-double v14, v14, v52

    aput-wide v14, v2, v13

    if-eqz v7, :cond_3e

    const/4 v2, 0x0

    :goto_32
    iget v13, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v2, v13, :cond_3e

    iget-object v13, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v13, v13, v2

    aget-wide v13, v13, v1

    mul-double v13, v13, v52

    iget-object v15, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v15, v15, v2

    add-int/lit8 v16, v1, 0x1

    aget-wide v15, v15, v16

    mul-double/2addr v15, v11

    add-double v44, v13, v15

    iget-object v13, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v13, v13, v2

    add-int/lit8 v14, v1, 0x1

    move/from16 v62, v7

    move/from16 v63, v8

    neg-double v7, v11

    iget-object v15, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v15, v15, v2

    aget-wide v15, v15, v1

    mul-double/2addr v7, v15

    iget-object v15, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v15, v15, v2

    add-int/lit8 v16, v1, 0x1

    aget-wide v15, v15, v16

    mul-double v15, v15, v52

    add-double/2addr v7, v15

    aput-wide v7, v13, v14

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v7, v7, v2

    aput-wide v44, v7, v1

    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v62

    move/from16 v8, v63

    goto :goto_32

    :cond_3e
    move/from16 v62, v7

    move/from16 v63, v8

    invoke-static {v5, v6, v9, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v7

    div-double v13, v5, v7

    div-double v11, v9, v7

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aput-wide v7, v2, v1

    aget-wide v15, v3, v1

    mul-double/2addr v15, v13

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v34, v1, 0x1

    aget-wide v44, v2, v34

    mul-double v44, v44, v11

    add-double v5, v15, v44

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v15, v1, 0x1

    move-wide/from16 v64, v5

    neg-double v5, v11

    aget-wide v44, v3, v1

    mul-double v5, v5, v44

    move-wide/from16 v66, v7

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    add-int/lit8 v8, v1, 0x1

    aget-wide v7, v7, v8

    mul-double/2addr v7, v13

    add-double/2addr v5, v7

    aput-wide v5, v2, v15

    add-int/lit8 v2, v1, 0x1

    aget-wide v5, v3, v2

    mul-double v9, v11, v5

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v3, v5

    mul-double/2addr v5, v13

    aput-wide v5, v3, v2

    if-eqz v32, :cond_3f

    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    if-ge v1, v2, :cond_3f

    const/4 v2, 0x0

    :goto_33
    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v2, v5, :cond_3f

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v1

    mul-double/2addr v5, v13

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v8, v8, v2

    add-int/lit8 v15, v1, 0x1

    aget-wide v15, v8, v15

    mul-double/2addr v15, v11

    add-double v66, v5, v15

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v5, v5, v2

    add-int/lit8 v6, v1, 0x1

    neg-double v7, v11

    iget-object v15, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v15, v15, v2

    aget-wide v15, v15, v1

    mul-double/2addr v7, v15

    iget-object v15, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v15, v15, v2

    add-int/lit8 v16, v1, 0x1

    aget-wide v15, v15, v16

    mul-double/2addr v15, v13

    add-double/2addr v7, v15

    aput-wide v7, v5, v6

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v5, v5, v2

    aput-wide v66, v5, v1

    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x1

    goto :goto_33

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v12, v54

    move-wide/from16 v14, v60

    move/from16 v7, v62

    move/from16 v8, v63

    move-wide/from16 v5, v64

    goto/16 :goto_31

    :cond_40
    move/from16 v62, v7

    move/from16 v63, v8

    move-wide/from16 v54, v12

    move-wide/from16 v60, v14

    add-int/lit8 v1, v4, -0x2

    aput-wide v5, v3, v1

    add-int/lit8 v5, v33, 0x1

    nop

    move-object/from16 v72, v3

    goto/16 :goto_39

    :pswitch_2
    move/from16 v35, v2

    move/from16 v62, v7

    move/from16 v63, v8

    move/from16 v37, v9

    move-wide/from16 v50, v10

    move-wide/from16 v60, v14

    move/from16 v36, v34

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    add-int/lit8 v8, v63, -0x1

    aget-wide v1, v3, v8

    add-int/lit8 v8, v63, -0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v8

    move-wide v5, v1

    move/from16 v1, v63

    :goto_34
    if-ge v1, v4, :cond_42

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v7, v2, v1

    invoke-static {v7, v8, v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v7

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v9, v2, v1

    div-double/2addr v9, v7

    div-double v11, v5, v7

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aput-wide v7, v2, v1

    neg-double v13, v11

    aget-wide v15, v3, v1

    mul-double v5, v13, v15

    aget-wide v13, v3, v1

    mul-double/2addr v13, v9

    aput-wide v13, v3, v1

    if-eqz v32, :cond_41

    const/4 v2, 0x0

    :goto_35
    iget v13, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    if-ge v2, v13, :cond_41

    iget-object v13, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v13, v13, v2

    aget-wide v13, v13, v1

    mul-double/2addr v13, v9

    iget-object v15, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v15, v15, v2

    add-int/lit8 v16, v63, -0x1

    aget-wide v15, v15, v16

    mul-double/2addr v15, v11

    add-double v7, v13, v15

    iget-object v13, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v13, v13, v2

    add-int/lit8 v14, v63, -0x1

    move-wide/from16 v68, v5

    neg-double v5, v11

    iget-object v15, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v15, v15, v2

    aget-wide v15, v15, v1

    mul-double/2addr v5, v15

    iget-object v15, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v15, v15, v2

    add-int/lit8 v16, v63, -0x1

    aget-wide v15, v15, v16

    mul-double/2addr v15, v9

    add-double/2addr v5, v15

    aput-wide v5, v13, v14

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    aget-object v5, v5, v2

    aput-wide v7, v5, v1

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v5, v68

    goto :goto_35

    :cond_41
    move-wide/from16 v68, v5

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v5, v68

    goto :goto_34

    :cond_42
    nop

    move-object/from16 v72, v3

    goto/16 :goto_38

    :pswitch_3
    move/from16 v35, v2

    move/from16 v62, v7

    move/from16 v63, v8

    move/from16 v37, v9

    move-wide/from16 v50, v10

    move-wide/from16 v60, v14

    move/from16 v36, v34

    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    add-int/lit8 v1, v4, -0x2

    aget-wide v1, v3, v1

    add-int/lit8 v5, v4, -0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v3, v5

    add-int/lit8 v5, v4, -0x2

    :goto_36
    move/from16 v8, v63

    if-lt v5, v8, :cond_45

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v9, v9, v5

    invoke-static {v9, v10, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v9

    iget-object v11, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v11, v11, v5

    div-double/2addr v11, v9

    div-double v13, v1, v9

    iget-object v15, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aput-wide v9, v15, v5

    if-eq v5, v8, :cond_43

    neg-double v6, v13

    add-int/lit8 v15, v5, -0x1

    aget-wide v15, v3, v15

    mul-double/2addr v6, v15

    add-int/lit8 v1, v5, -0x1

    add-int/lit8 v2, v5, -0x1

    aget-wide v15, v3, v2

    mul-double/2addr v15, v11

    aput-wide v15, v3, v1

    move-wide v1, v6

    :cond_43
    if-eqz v62, :cond_44

    const/4 v6, 0x0

    :goto_37
    iget v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v6, v7, :cond_44

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v7, v7, v6

    aget-wide v15, v7, v5

    mul-double/2addr v15, v11

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v7, v7, v6

    add-int/lit8 v17, v4, -0x1

    aget-wide v17, v7, v17

    mul-double v17, v17, v13

    add-double v9, v15, v17

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v7, v7, v6

    add-int/lit8 v15, v4, -0x1

    move-wide/from16 v70, v1

    neg-double v1, v13

    move-object/from16 v72, v3

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v3, v3, v6

    aget-wide v17, v3, v5

    mul-double v1, v1, v17

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v3, v3, v6

    add-int/lit8 v16, v4, -0x1

    aget-wide v17, v3, v16

    mul-double v17, v17, v11

    add-double v1, v1, v17

    aput-wide v1, v7, v15

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    aget-object v1, v1, v6

    aput-wide v9, v1, v5

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v1, v70

    move-object/from16 v3, v72

    goto :goto_37

    :cond_44
    move-wide/from16 v70, v1

    move-object/from16 v72, v3

    add-int/lit8 v5, v5, -0x1

    move/from16 v63, v8

    move-wide/from16 v1, v70

    move-object/from16 v3, v72

    const-wide/16 v6, 0x0

    goto :goto_36

    :cond_45
    move-object/from16 v72, v3

    :goto_38
    move/from16 v5, v33

    :goto_39
    move-wide/from16 v12, v29

    move/from16 v2, v31

    move/from16 v6, v32

    move/from16 v1, v36

    move/from16 v9, v37

    move-wide/from16 v10, v50

    move-wide/from16 v14, v60

    move/from16 v7, v62

    move-object/from16 v3, v72

    goto/16 :goto_1f

    :cond_46
    move/from16 v36, v1

    move/from16 v31, v2

    move-object/from16 v72, v3

    move/from16 v33, v5

    move/from16 v32, v6

    move/from16 v62, v7

    move/from16 v37, v9

    move-wide/from16 v50, v10

    move-wide/from16 v60, v14

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cond()D
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getS()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v4, v5, :cond_0

    aget-object v5, v1, v3

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSingularValues()[D
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    return-object v0
.end method

.method public getU()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 5

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[DII)V

    return-object v0
.end method

.method public getV()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 4

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[DII)V

    return-object v0
.end method

.method public norm2()D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public rank()I
    .locals 8

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, -0x3fb6000000000000L    # -52.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    mul-double/2addr v2, v6

    mul-double/2addr v2, v0

    const/4 v4, 0x0

    nop

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    array-length v6, v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v6, v6, v5

    cmpl-double v6, v6, v2

    if-lez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

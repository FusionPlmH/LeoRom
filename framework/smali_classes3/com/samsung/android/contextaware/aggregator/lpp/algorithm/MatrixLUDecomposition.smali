.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;
.super Ljava/lang/Object;
.source "MatrixLUDecomposition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private LU:[[D

.field private m:I

.field private n:I

.field private piv:[I

.field private pivsign:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v1, v1, [D

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v2, v3, :cond_9

    move v3, v0

    :goto_2
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v2

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_3
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v4, v4, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    const-wide/16 v6, 0x0

    move-wide v7, v6

    move v6, v0

    :goto_4
    if-ge v6, v5, :cond_2

    aget-wide v9, v4, v6

    aget-wide v11, v1, v6

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    aget-wide v9, v1, v3

    sub-double/2addr v9, v7

    aput-wide v9, v1, v3

    aput-wide v9, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move v3, v2

    add-int/lit8 v4, v2, 0x1

    :goto_5
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v4, v5, :cond_5

    aget-wide v5, v1, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    aget-wide v7, v1, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_4

    move v3, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    if-eq v3, v2, :cond_7

    move v4, v0

    :goto_6
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v5, v5, v3

    aget-wide v5, v5, v4

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v7, v7, v3

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v8, v8, v2

    aget-wide v8, v8, v4

    aput-wide v8, v7, v4

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v7, v7, v2

    aput-wide v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v6, v6, v2

    aput v6, v5, v3

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aput v4, v5, v2

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    neg-int v5, v5

    iput v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    :cond_7
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v2, v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_8

    add-int/lit8 v4, v2, 0x1

    :goto_7
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v4, v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v5, v5, v4

    aget-wide v6, v5, v2

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v8, v8, v2

    aget-wide v8, v8, v2

    div-double/2addr v6, v8

    aput-wide v6, v5, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    return-void
.end method


# virtual methods
.method public det()D
    .locals 5

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    int-to-double v0, v0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v3, v3, v2

    aget-wide v3, v3, v2

    mul-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix must be square."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDoublePivot()[D
    .locals 4

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v2, v2, v1

    int-to-double v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getL()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v3, v4, :cond_3

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v4, v5, :cond_2

    if-le v3, v4, :cond_0

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v4

    aput-wide v6, v5, v4

    goto :goto_2

    :cond_0
    if-ne v3, v4, :cond_1

    aget-object v5, v1, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v5, v4

    goto :goto_2

    :cond_1
    aget-object v5, v1, v3

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getPivot()[I
    .locals 3

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v2, v2, v1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getU()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v3, v4, :cond_2

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v4, v5, :cond_1

    if-gt v3, v4, :cond_0

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v4

    aput-wide v6, v5, v4

    goto :goto_2

    :cond_0
    aget-object v5, v1, v3

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public isNonsingular()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v2, v2, v1

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 14

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->isNonsingular()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getMatrix([III)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v2

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    :goto_1
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v5, v6, :cond_1

    move v6, v3

    :goto_2
    if-ge v6, v0, :cond_0

    aget-object v7, v2, v5

    aget-wide v8, v7, v6

    aget-object v10, v2, v4

    aget-wide v10, v10, v6

    iget-object v12, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v12, v12, v5

    aget-wide v12, v12, v4

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    add-int/lit8 v4, v4, -0x1

    :goto_3
    if-ltz v4, :cond_6

    move v5, v3

    :goto_4
    if-ge v5, v0, :cond_3

    aget-object v6, v2, v4

    aget-wide v7, v6, v5

    iget-object v9, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v9, v9, v4

    aget-wide v9, v9, v4

    div-double/2addr v7, v9

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    move v5, v3

    :goto_5
    if-ge v5, v4, :cond_5

    move v6, v3

    :goto_6
    if-ge v6, v0, :cond_4

    aget-object v7, v2, v5

    aget-wide v8, v7, v6

    aget-object v10, v2, v4

    aget-wide v10, v10, v6

    iget-object v12, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v12, v12, v5

    aget-wide v12, v12, v4

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_6
    return-object v1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Matrix is singular."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix row dimensions must agree."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

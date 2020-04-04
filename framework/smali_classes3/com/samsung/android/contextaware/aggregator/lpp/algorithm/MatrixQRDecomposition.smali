.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;
.super Ljava/lang/Object;
.source "MatrixQRDecomposition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private QR:[[D

.field private Rdiag:[D

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v0, v1, :cond_6

    const-wide/16 v1, 0x0

    move-wide v2, v1

    move v1, v0

    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v4, v4, v1

    aget-wide v4, v4, v0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v1, v1, v0

    aget-wide v6, v1, v0

    cmpg-double v1, v6, v4

    if-gez v1, :cond_1

    neg-double v2, v2

    :cond_1
    move v1, v0

    :goto_2
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v4, v4, v1

    aget-wide v5, v4, v0

    div-double/2addr v5, v2

    aput-wide v5, v4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v1, v1, v0

    aget-wide v4, v1, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    aput-wide v4, v1, v0

    add-int/lit8 v1, v0, 0x1

    :goto_3
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v1, v4, :cond_5

    const-wide/16 v4, 0x0

    move-wide v5, v4

    move v4, v0

    :goto_4
    iget v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v4, v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v4

    aget-wide v7, v7, v0

    iget-object v9, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v9, v9, v4

    aget-wide v9, v9, v1

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    neg-double v7, v5

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v4, v4, v0

    aget-wide v9, v4, v0

    div-double/2addr v7, v9

    move v4, v0

    :goto_5
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v4

    aget-wide v9, v5, v1

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v6, v6, v4

    aget-wide v11, v6, v0

    mul-double/2addr v11, v7

    add-double/2addr v9, v11

    aput-wide v9, v5, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    neg-double v4, v2

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public getH()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v3, v4, :cond_2

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v4, v5, :cond_1

    if-lt v3, v4, :cond_0

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

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

.method public getQ()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 15

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_4

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    const-wide/16 v5, 0x0

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    aput-wide v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    aget-object v3, v1, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    aput-wide v7, v3, v2

    move v3, v2

    :goto_2
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v4, v4, v2

    aget-wide v7, v4, v2

    cmpl-double v4, v7, v5

    if-eqz v4, :cond_2

    const-wide/16 v7, 0x0

    move v4, v2

    :goto_3
    iget v9, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v4, v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v9, v9, v4

    aget-wide v9, v9, v2

    aget-object v11, v1, v4

    aget-wide v11, v11, v3

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    neg-double v9, v7

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v4, v4, v2

    aget-wide v11, v4, v2

    div-double/2addr v9, v11

    move v4, v2

    :goto_4
    iget v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v4, v7, :cond_2

    aget-object v7, v1, v4

    aget-wide v11, v7, v3

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v8, v8, v4

    aget-wide v13, v8, v2

    mul-double/2addr v13, v9

    add-double/2addr v11, v13

    aput-wide v11, v7, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getR()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v4, :cond_3

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v4, v5, :cond_2

    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v4

    aput-wide v6, v5, v4

    goto :goto_2

    :cond_0
    if-ne v3, v4, :cond_1

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    aget-wide v6, v6, v3

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

.method public isFullRank()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

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

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->isFullRank()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    if-ge v3, v4, :cond_3

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_2

    const-wide/16 v5, 0x0

    move-wide v6, v5

    move v5, v3

    :goto_2
    iget v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v5, v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v8, v8, v5

    aget-wide v8, v8, v3

    aget-object v10, v1, v5

    aget-wide v10, v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    neg-double v8, v6

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v5, v5, v3

    aget-wide v10, v5, v3

    div-double/2addr v8, v10

    move v5, v3

    :goto_3
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->m:I

    if-ge v5, v6, :cond_1

    aget-object v6, v1, v5

    aget-wide v10, v6, v4

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v7, v7, v5

    aget-wide v12, v7, v3

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    aput-wide v10, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-ltz v3, :cond_7

    move v4, v2

    :goto_5
    if-ge v4, v0, :cond_4

    aget-object v5, v1, v3

    aget-wide v6, v5, v4

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->Rdiag:[D

    aget-wide v8, v8, v3

    div-double/2addr v6, v8

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    move v4, v2

    :goto_6
    if-ge v4, v3, :cond_6

    move v5, v2

    :goto_7
    if-ge v5, v0, :cond_5

    aget-object v6, v1, v4

    aget-wide v7, v6, v5

    aget-object v9, v1, v3

    aget-wide v9, v9, v5

    iget-object v11, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->QR:[[D

    aget-object v11, v11, v4

    aget-wide v11, v11, v3

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_7
    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    invoke-direct {v3, v1, v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[DII)V

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->n:I

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v3, v2, v4, v2, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getMatrix(IIII)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v2

    return-object v2

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Matrix is rank deficient."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix row dimensions must agree."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

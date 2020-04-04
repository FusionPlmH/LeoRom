.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private A:[[D

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iput p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    filled-new-array {p1, p2}, [I

    move-result-object v0

    const-class v1, D

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    return-void
.end method

.method public constructor <init>(IID)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iput p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    filled-new-array {p1, p2}, [I

    move-result-object v0

    const-class v1, D

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, p2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v1

    aput-wide p3, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>([DI)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p1

    div-int/2addr v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    mul-int/2addr v1, p2

    array-length v2, p1

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    filled-new-array {p2, v1}, [I

    move-result-object v1

    const-class v2, D

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_2

    move v2, v0

    :goto_2
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v1

    mul-int v4, v2, p2

    add-int/2addr v4, v1

    aget-wide v4, p1, v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array length must be a multiple of m."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([[D)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    nop

    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    array-length v1, v1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "All rows must have the same length."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    return-void
.end method

.method public constructor <init>([[DII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    iput p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iput p3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    return-void
.end method

.method private checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 2

    iget v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix dimensions must agree."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static constructWithCopy([[D)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 10

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v3, v0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v4

    move v5, v1

    :goto_0
    if-ge v5, v0, :cond_2

    aget-object v6, p0, v5

    array-length v6, v6

    if-ne v6, v2, :cond_1

    move v6, v1

    :goto_1
    if-ge v6, v2, :cond_0

    aget-object v7, v4, v5

    aget-object v8, p0, v5

    aget-wide v8, v8, v6

    aput-wide v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v6, "All rows must have the same length."

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object v3
.end method

.method public static hypot(DD)D
    .locals 9

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-lez v0, :cond_0

    div-double v0, p2, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double v7, v0, v0

    add-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v1, v5, v2

    :goto_0
    goto :goto_1

    :cond_0
    cmpl-double v0, p2, v1

    if-eqz v0, :cond_1

    div-double v0, p0, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double v7, v0, v0

    add-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v1, v5, v2

    goto :goto_0

    :cond_1
    nop

    :goto_1
    move-wide v0, v1

    return-wide v0
.end method

.method public static identity(II)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, p1, :cond_1

    aget-object v5, v1, v3

    if-ne v3, v4, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_0
    const-wide/16 v6, 0x0

    :goto_2
    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static random(II)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, p1, :cond_0

    aget-object v5, v1, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static read(Ljava/io/BufferedReader;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/StreamTokenizer;

    invoke-direct {v0, p0}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->resetSyntax()V

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/StreamTokenizer;->eolIsSignificant(Z)V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget v3, v0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    :cond_1
    iget-object v3, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    const/4 v4, -0x3

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v5, v3, [D

    move v6, v1

    :goto_1
    if-ge v6, v3, :cond_2

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v7

    if-ne v7, v4, :cond_6

    new-array v7, v3, [D

    move-object v5, v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v7, v1

    :goto_3
    if-ge v7, v3, :cond_5

    add-int/lit8 v8, v7, 0x1

    iget-object v9, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    aput-wide v9, v5, v7

    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v7

    if-eq v7, v4, :cond_4

    if-lt v8, v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Row "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is too short."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move v7, v8

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Row "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is too long."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v4, v1, [[D

    invoke-virtual {v6, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    new-instance v7, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-direct {v7, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    return-object v7

    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unexpected EOF on matrix read."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public arrayLeftDivide(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 10

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v4, v5, :cond_0

    aget-object v5, v1, v3

    iget-object v6, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v4

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v8, v8, v3

    aget-wide v8, v8, v4

    div-double/2addr v6, v8

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public arrayLeftDivideEquals(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v4, v4, v1

    aget-wide v4, v4, v2

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v1

    aget-wide v6, v6, v2

    div-double/2addr v4, v6

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public arrayRightDivide(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 10

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v4, v5, :cond_0

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v4

    iget-object v8, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v8, v8, v3

    aget-wide v8, v8, v4

    div-double/2addr v6, v8

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public arrayRightDivideEquals(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v4, v4, v1

    aget-wide v4, v4, v2

    iget-object v6, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v1

    aget-wide v6, v6, v2

    div-double/2addr v4, v6

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public arrayTimes(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 10

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v4, v5, :cond_0

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v4

    iget-object v8, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v8, v8, v3

    aget-wide v8, v8, v4

    mul-double/2addr v6, v8

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public arrayTimesEquals(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v4, v4, v1

    aget-wide v4, v4, v2

    iget-object v6, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v1

    aget-wide v6, v6, v2

    mul-double/2addr v4, v6

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->copy()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public cond()D
    .locals 2

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->cond()D

    move-result-wide v0

    return-wide v0
.end method

.method public copy()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v4, v5, :cond_0

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v4

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public det()D
    .locals 2

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->det()D

    move-result-wide v0

    return-wide v0
.end method

.method public get(II)D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    return-wide v0
.end method

.method public getArray()[[D
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    return-object v0
.end method

.method public getArrayCopy()[[D
    .locals 7

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, D

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getColumnDimension()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    return v0
.end method

.method public getColumnPackedCopy()[D
    .locals 7

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    mul-int/2addr v0, v1

    new-array v0, v0, [D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    aput-wide v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMatrix(IIII)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    sub-int v2, p4, p3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    move v2, p1

    :goto_0
    if-gt v2, p2, :cond_1

    move v3, p3

    :goto_1
    if-gt v3, p4, :cond_0

    sub-int v4, v2, p1

    :try_start_0
    aget-object v4, v1, v4

    sub-int v5, v3, p3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v2

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "Submatrix indices"

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    return-object v0
.end method

.method public getMatrix(II[I)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 7

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    array-length v2, p3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    move v2, p1

    :goto_0
    if-gt v2, p2, :cond_1

    const/4 v3, 0x0

    :goto_1
    :try_start_0
    array-length v4, p3

    if-ge v3, v4, :cond_0

    sub-int v4, v2, p1

    aget-object v4, v1, v4

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget v6, p3, v3

    aget-wide v5, v5, v6

    aput-wide v5, v4, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "Submatrix indices"

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    nop

    return-object v0
.end method

.method public getMatrix([III)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    array-length v1, p1

    sub-int v2, p3, p2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    move v3, p2

    :goto_1
    if-gt v3, p3, :cond_0

    aget-object v4, v1, v2

    sub-int v5, v3, p2

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget v7, p1, v2

    aget-object v6, v6, v7

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    return-object v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "Submatrix indices"

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getMatrix([I[I)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    array-length v1, p1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_0

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget v7, p1, v3

    aget-object v6, v6, v7

    aget v7, p2, v4

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    return-object v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "Submatrix indices"

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getRowDimension()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    return v0
.end method

.method public getRowPackedCopy()[D
    .locals 7

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    mul-int/2addr v0, v1

    new-array v0, v0, [D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v3, v4, :cond_0

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    aput-wide v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 2

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->identity(II)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 10

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v4, v5, :cond_0

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v4

    iget-object v8, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v8, v8, v3

    aget-wide v8, v8, v4

    sub-double/2addr v6, v8

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public minusEquals(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v4, v4, v1

    aget-wide v4, v4, v2

    iget-object v6, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v1

    aget-wide v6, v6, v2

    sub-double/2addr v4, v6

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public norm1()D
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move v0, v2

    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v0, v1, :cond_1

    const-wide/16 v5, 0x0

    move v1, v2

    :goto_1
    iget v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v1, v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v7, v7, v1

    aget-wide v7, v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public norm2()D
    .locals 2

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->norm2()D

    move-result-wide v0

    return-wide v0
.end method

.method public normF()D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move v0, v2

    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v1, :cond_1

    move v1, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v5, v5, v0

    aget-wide v5, v5, v1

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public normInf()D
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move v0, v2

    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v0, v1, :cond_1

    const-wide/16 v5, 0x0

    move v1, v2

    :goto_1
    iget v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v1, v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v7, v7, v0

    aget-wide v7, v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public plus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 10

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v4, v5, :cond_0

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v4

    iget-object v8, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v8, v8, v3

    aget-wide v8, v8, v4

    add-double/2addr v6, v8

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public plusEquals(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->checkMatrixDimensions(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v4, v4, v1

    aget-wide v4, v4, v2

    iget-object v6, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v1

    aget-wide v6, v6, v2

    add-double/2addr v4, v6

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public print(II)V
    .locals 3

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->print(Ljava/io/PrintWriter;II)V

    return-void
.end method

.method public print(Ljava/io/PrintWriter;II)V
    .locals 3

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    invoke-virtual {v0, p3}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    invoke-virtual {v0, p3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->print(Ljava/io/PrintWriter;Ljava/text/NumberFormat;I)V

    return-void
.end method

.method public print(Ljava/io/PrintWriter;Ljava/text/NumberFormat;I)V
    .locals 7

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v1

    aget-wide v3, v3, v2

    invoke-virtual {p2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, p3, v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v5, v0

    :goto_2
    if-ge v5, v4, :cond_0

    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public print(Ljava/text/NumberFormat;I)V
    .locals 3

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->print(Ljava/io/PrintWriter;Ljava/text/NumberFormat;I)V

    return-void
.end method

.method public rank()I
    .locals 1

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->rank()I

    move-result v0

    return v0
.end method

.method public set(IID)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v0, v0, p1

    aput-wide p3, v0, p2

    return-void
.end method

.method public setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 5

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_1

    move v1, p3

    :goto_1
    if-gt v1, p4, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    sub-int v3, v0, p1

    sub-int v4, v1, p3

    invoke-virtual {p5, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v3

    aput-wide v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Submatrix indices"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    return-void
.end method

.method public setMatrix(II[ILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 6

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_1

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v2, v2, v0

    aget v3, p3, v1

    sub-int v4, v0, p1

    invoke-virtual {p4, v4, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    aput-wide v4, v2, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Submatrix indices"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    nop

    return-void
.end method

.method public setMatrix([IIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    move v1, p2

    :goto_1
    if-gt v1, p3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget v3, p1, v0

    aget-object v2, v2, v3

    sub-int v3, v1, p2

    invoke-virtual {p4, v0, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v3

    aput-wide v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Submatrix indices"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMatrix([I[ILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget v4, p1, v1

    aget-object v3, v3, v4

    aget v4, p2, v2

    invoke-virtual {p3, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v5

    aput-wide v5, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "Submatrix indices"

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 2

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixQRDecomposition;->solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public solveTranspose(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->transpose()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->transpose()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public svd()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;
    .locals 1

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    return-object v0
.end method

.method public times(D)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v4, v5, :cond_0

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v4

    mul-double/2addr v6, p1

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 14

    iget v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    new-array v2, v2, [D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v4, v5, :cond_3

    move v5, v3

    :goto_1
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v5, v6, :cond_0

    iget-object v6, p1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v5

    aget-wide v6, v6, v4

    aput-wide v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_2
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v5

    const-wide/16 v7, 0x0

    move-wide v8, v7

    move v7, v3

    :goto_3
    iget v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v7, v10, :cond_1

    aget-wide v10, v6, v7

    aget-wide v12, v2, v7

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_1
    aget-object v7, v1, v5

    aput-wide v8, v7, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix inner dimensions must agree."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timesEquals(D)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v4, v4, v1

    aget-wide v4, v4, v2

    mul-double/2addr v4, p1

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public trace()D
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v3, v3, v2

    aget-wide v3, v3, v2

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public transpose()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v4, v5, :cond_0

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v4

    aput-wide v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public uminus()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .locals 8

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->m:I

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->n:I

    if-ge v4, v5, :cond_0

    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->A:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v4

    neg-double v6, v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

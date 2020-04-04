.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private static bitsToWords(Lcom/google/zxing/common/BitArray;II)[I
    .locals 8

    new-array v0, p2, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    div-int/2addr v2, p1

    :goto_0
    if-ge v1, v2, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    :goto_1
    if-ge v3, p1, :cond_1

    mul-int v6, v1, p1

    add-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    sub-int v6, p1, v3

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    shl-int v6, v7, v6

    goto :goto_2

    :cond_0
    move v6, v4

    :goto_2
    or-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    aput v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    sub-int v1, p1, v0

    :goto_1
    add-int v2, p1, v0

    if-gt v1, v2, :cond_0

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    sub-int v0, p1, p2

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v0, p1, p2

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v0, p1, p2

    sub-int v1, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v0, p1, p2

    sub-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v0, p1, p2

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    return-void
.end method

.method private static drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V
    .locals 4

    div-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    nop

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_9

    add-int/lit8 v2, v0, -0x3

    add-int/2addr v2, v1

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v3, v1, 0x7

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_1
    rsub-int/lit8 v3, v1, 0x14

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_2
    rsub-int/lit8 v3, v1, 0x1b

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    nop

    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_9

    add-int/lit8 v2, v0, -0x5

    add-int/2addr v2, v1

    div-int/lit8 v3, v1, 0x5

    add-int/2addr v2, v3

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_5
    add-int/lit8 v3, v1, 0xa

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_6
    rsub-int/lit8 v3, v1, 0x1d

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_7
    rsub-int/lit8 v3, v1, 0x27

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method public static encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 34

    new-instance v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([B)V

    invoke-virtual {v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    mul-int v3, v3, p1

    div-int/lit8 v3, v3, 0x64

    const/16 v5, 0xb

    add-int/2addr v3, v5

    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    add-int/2addr v6, v3

    const/16 v7, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz p2, :cond_6

    if-gez p2, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v9

    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-eqz v11, :cond_1

    const/4 v7, 0x4

    nop

    :cond_1
    if-gt v12, v7, :cond_5

    invoke-static {v12, v11}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v7

    sget-object v13, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v13, v13, v12

    rem-int v14, v7, v13

    sub-int v14, v7, v14

    invoke-static {v1, v13}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v16

    add-int v8, v16, v3

    if-gt v8, v14, :cond_4

    if-eqz v11, :cond_3

    invoke-virtual {v15}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    mul-int/lit8 v5, v13, 0x40

    if-gt v8, v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "Data to large for user specified layer"

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    :goto_1
    nop

    move v14, v7

    move/from16 v33, v12

    move v12, v11

    move v11, v13

    move/from16 v13, v33

    goto/16 :goto_5

    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "Data to large for user specified layer"

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const-string v8, "Illegal value %s for layers"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    const/4 v5, 0x0

    const/4 v8, 0x0

    move v11, v5

    move v5, v9

    :goto_2
    if-gt v5, v7, :cond_1b

    const/4 v12, 0x3

    if-gt v5, v12, :cond_7

    move v12, v10

    goto :goto_3

    :cond_7
    move v12, v9

    :goto_3
    if-eqz v12, :cond_8

    add-int/lit8 v13, v5, 0x1

    goto :goto_4

    :cond_8
    move v13, v5

    :goto_4
    invoke-static {v13, v12}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v14

    if-le v6, v14, :cond_9

    nop

    move-object/from16 v23, v1

    move/from16 v25, v3

    move/from16 v28, v6

    move v6, v10

    const/16 v16, 0xb

    const/16 v17, 0x4

    goto/16 :goto_12

    :cond_9
    sget-object v15, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v15, v15, v13

    if-eq v11, v15, :cond_a

    sget-object v15, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v11, v15, v13

    invoke-static {v1, v11}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v8

    :cond_a
    move-object v15, v8

    rem-int v8, v14, v11

    sub-int v8, v14, v8

    if-eqz v12, :cond_b

    invoke-virtual {v15}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    mul-int/lit8 v9, v11, 0x40

    if-le v7, v9, :cond_b

    nop

    move-object/from16 v23, v1

    move/from16 v25, v3

    move/from16 v28, v6

    move v6, v10

    const/16 v16, 0xb

    const/16 v17, 0x4

    goto/16 :goto_11

    :cond_b
    invoke-virtual {v15}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    add-int/2addr v7, v3

    if-gt v7, v8, :cond_1a

    nop

    :goto_5
    invoke-static {v15, v14, v11}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v5

    invoke-virtual {v15}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    div-int/2addr v7, v11

    invoke-static {v12, v13, v7}, Lcom/google/zxing/aztec/encoder/Encoder;->generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;

    move-result-object v8

    if-eqz v12, :cond_c

    mul-int/lit8 v9, v13, 0x4

    const/16 v16, 0xb

    add-int v9, v16, v9

    goto :goto_6

    :cond_c
    const/16 v9, 0xe

    mul-int/lit8 v16, v13, 0x4

    add-int v9, v9, v16

    :goto_6
    new-array v10, v9, [I

    if-eqz v12, :cond_d

    move/from16 v16, v9

    const/16 v18, 0x0

    :goto_7
    move/from16 v22, v18

    array-length v0, v10

    move-object/from16 v23, v1

    move/from16 v1, v22

    if-ge v1, v0, :cond_e

    aput v1, v10, v1

    add-int/lit8 v18, v1, 0x1

    move-object/from16 v1, v23

    goto :goto_7

    :cond_d
    move-object/from16 v23, v1

    add-int/lit8 v0, v9, 0x1

    div-int/lit8 v1, v9, 0x2

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0xf

    const/16 v16, 0x2

    mul-int v1, v1, v16

    add-int v16, v0, v1

    div-int/lit8 v0, v9, 0x2

    div-int/lit8 v1, v16, 0x2

    const/16 v18, 0x0

    :goto_8
    move/from16 v24, v18

    move/from16 v2, v24

    if-ge v2, v0, :cond_e

    div-int/lit8 v24, v2, 0xf

    add-int v24, v2, v24

    sub-int v18, v0, v2

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    sub-int v21, v1, v24

    add-int/lit8 v21, v21, -0x1

    aput v21, v10, v18

    add-int v18, v0, v2

    add-int v21, v1, v24

    add-int/lit8 v22, v21, 0x1

    aput v22, v10, v18

    add-int/lit8 v18, v2, 0x1

    move-object/from16 v2, p0

    goto :goto_8

    :cond_e
    move/from16 v0, v16

    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v2, 0x0

    move/from16 v25, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_9
    if-ge v3, v13, :cond_16

    if-eqz v12, :cond_f

    sub-int v16, v13, v3

    const/16 v17, 0x4

    mul-int/lit8 v16, v16, 0x4

    add-int/lit8 v16, v16, 0x9

    goto :goto_a

    :cond_f
    const/16 v17, 0x4

    sub-int v16, v13, v3

    mul-int/lit8 v16, v16, 0x4

    add-int/lit8 v16, v16, 0xc

    :goto_a
    move/from16 v26, v16

    const/16 v16, 0x0

    :goto_b
    move/from16 v27, v16

    move/from16 v28, v6

    move/from16 v4, v26

    move/from16 v6, v27

    if-ge v6, v4, :cond_15

    mul-int/lit8 v27, v6, 0x2

    const/16 v16, 0x0

    :goto_c
    move/from16 v29, v16

    move/from16 v30, v11

    move/from16 v31, v14

    move/from16 v11, v29

    const/4 v14, 0x2

    if-ge v11, v14, :cond_14

    add-int v16, v2, v27

    add-int v14, v16, v11

    invoke-virtual {v5, v14}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v14

    if-eqz v14, :cond_10

    mul-int/lit8 v14, v3, 0x2

    add-int/2addr v14, v11

    aget v14, v10, v14

    mul-int/lit8 v16, v3, 0x2

    add-int v16, v16, v6

    move-object/from16 v32, v15

    aget v15, v10, v16

    invoke-virtual {v1, v14, v15}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    goto :goto_d

    :cond_10
    move-object/from16 v32, v15

    :goto_d
    mul-int/lit8 v26, v4, 0x2

    add-int v26, v2, v26

    add-int v26, v26, v27

    add-int v14, v26, v11

    invoke-virtual {v5, v14}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v14

    if-eqz v14, :cond_11

    mul-int/lit8 v14, v3, 0x2

    add-int/2addr v14, v6

    aget v14, v10, v14

    add-int/lit8 v15, v9, -0x1

    mul-int/lit8 v16, v3, 0x2

    sub-int v15, v15, v16

    sub-int/2addr v15, v11

    aget v15, v10, v15

    invoke-virtual {v1, v14, v15}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_11
    mul-int/lit8 v26, v4, 0x4

    add-int v26, v2, v26

    add-int v26, v26, v27

    add-int v14, v26, v11

    invoke-virtual {v5, v14}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v14

    if-eqz v14, :cond_12

    add-int/lit8 v14, v9, -0x1

    mul-int/lit8 v15, v3, 0x2

    sub-int/2addr v14, v15

    sub-int/2addr v14, v11

    aget v14, v10, v14

    add-int/lit8 v15, v9, -0x1

    mul-int/lit8 v16, v3, 0x2

    sub-int v15, v15, v16

    sub-int/2addr v15, v6

    aget v15, v10, v15

    invoke-virtual {v1, v14, v15}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_12
    mul-int/lit8 v26, v4, 0x6

    add-int v26, v2, v26

    add-int v26, v26, v27

    add-int v14, v26, v11

    invoke-virtual {v5, v14}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v14

    if-eqz v14, :cond_13

    add-int/lit8 v14, v9, -0x1

    mul-int/lit8 v15, v3, 0x2

    sub-int/2addr v14, v15

    sub-int/2addr v14, v6

    aget v14, v10, v14

    mul-int/lit8 v15, v3, 0x2

    add-int/2addr v15, v11

    aget v15, v10, v15

    invoke-virtual {v1, v14, v15}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_13
    add-int/lit8 v16, v11, 0x1

    move/from16 v11, v30

    move/from16 v14, v31

    move-object/from16 v15, v32

    goto/16 :goto_c

    :cond_14
    move-object/from16 v32, v15

    add-int/lit8 v16, v6, 0x1

    move/from16 v26, v4

    move/from16 v6, v28

    move/from16 v11, v30

    move/from16 v14, v31

    goto/16 :goto_b

    :cond_15
    move/from16 v30, v11

    move/from16 v31, v14

    move-object/from16 v32, v15

    mul-int/lit8 v26, v4, 0x8

    add-int v2, v2, v26

    add-int/lit8 v3, v3, 0x1

    move/from16 v6, v28

    goto/16 :goto_9

    :cond_16
    move/from16 v28, v6

    move/from16 v30, v11

    move/from16 v31, v14

    move-object/from16 v32, v15

    invoke-static {v1, v12, v0, v8}, Lcom/google/zxing/aztec/encoder/Encoder;->drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V

    if-eqz v12, :cond_17

    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    goto :goto_10

    :cond_17
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    const/4 v2, 0x0

    const/16 v20, 0x0

    :goto_e
    move/from16 v3, v20

    div-int/lit8 v4, v9, 0x2

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_19

    div-int/lit8 v4, v0, 0x2

    and-int/2addr v4, v6

    :goto_f
    if-ge v4, v0, :cond_18

    div-int/lit8 v11, v0, 0x2

    sub-int/2addr v11, v3

    invoke-virtual {v1, v11, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v11, v0, 0x2

    add-int/2addr v11, v3

    invoke-virtual {v1, v11, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v11, v0, 0x2

    sub-int/2addr v11, v3

    invoke-virtual {v1, v4, v11}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v11, v0, 0x2

    add-int/2addr v11, v3

    invoke-virtual {v1, v4, v11}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_f

    :cond_18
    add-int/lit8 v2, v2, 0xf

    add-int/lit8 v20, v3, 0x10

    goto :goto_e

    :cond_19
    :goto_10
    new-instance v2, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v2}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    invoke-virtual {v2, v12}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCompact(Z)V

    invoke-virtual {v2, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setSize(I)V

    invoke-virtual {v2, v13}, Lcom/google/zxing/aztec/encoder/AztecCode;->setLayers(I)V

    invoke-virtual {v2, v7}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCodeWords(I)V

    invoke-virtual {v2, v1}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    return-object v2

    :cond_1a
    move-object/from16 v23, v1

    move/from16 v25, v3

    move/from16 v28, v6

    move v6, v10

    const/16 v16, 0xb

    const/16 v17, 0x4

    :goto_11
    move-object v8, v15

    :goto_12
    add-int/lit8 v5, v5, 0x1

    move v10, v6

    move-object/from16 v1, v23

    move/from16 v3, v25

    move/from16 v6, v28

    move-object/from16 v2, p0

    const/16 v7, 0x20

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v23, v1

    move/from16 v25, v3

    move/from16 v28, v6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data too large for an Aztec code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .locals 10

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    div-int/2addr v0, p2

    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    div-int v2, p1, p2

    invoke-static {p0, p2, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object v3

    sub-int v4, v2, v0

    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    rem-int v4, p1, p2

    new-instance v5, Lcom/google/zxing/common/BitArray;

    invoke-direct {v5}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move-object v7, v3

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget v9, v7, v6

    invoke-virtual {v5, v9, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method static generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;
    .locals 4

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v1, 0x4

    if-eqz p0, :cond_0

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v2, 0x1c

    invoke-static {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v2, p2, -0x1

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v2, 0x28

    invoke-static {v0, v2, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :cond_1
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :cond_2
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :cond_3
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0

    :cond_4
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-object v0
.end method

.method static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .locals 9

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x1

    shl-int v3, v2, p1

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_5

    const/4 v6, 0x0

    move v7, v6

    move v6, v4

    :goto_1
    if-ge v6, p1, :cond_2

    add-int v8, v5, v6

    if-ge v8, v1, :cond_0

    add-int v8, v5, v6

    invoke-virtual {p0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    add-int/lit8 v8, p1, -0x1

    sub-int/2addr v8, v6

    shl-int v8, v2, v8

    or-int/2addr v7, v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    and-int v6, v7, v3

    if-ne v6, v3, :cond_3

    and-int v6, v7, v3

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    and-int v6, v7, v3

    if-nez v6, :cond_4

    or-int/lit8 v6, v7, 0x1

    invoke-virtual {v0, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v7, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :goto_2
    add-int/2addr v5, p1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x58

    goto :goto_0

    :cond_0
    const/16 v0, 0x70

    :goto_0
    const/16 v1, 0x10

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    mul-int/2addr v0, p0

    return v0
.end method

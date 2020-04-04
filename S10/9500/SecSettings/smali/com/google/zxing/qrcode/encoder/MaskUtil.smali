.class final Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# direct methods
.method static applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v2

    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v3

    const/4 v4, 0x0

    move v5, v0

    move v0, v4

    :goto_2
    if-ge v0, v1, :cond_7

    const/4 v6, 0x0

    const/4 v7, -0x1

    move v8, v5

    move v5, v4

    :goto_3
    const/4 v9, 0x3

    const/4 v10, 0x5

    if-ge v5, v2, :cond_5

    if-eqz p1, :cond_2

    aget-object v11, v3, v0

    aget-byte v11, v11, v5

    goto :goto_4

    :cond_2
    aget-object v11, v3, v5

    aget-byte v11, v11, v0

    :goto_4
    if-ne v11, v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_3
    if-lt v6, v10, :cond_4

    add-int/lit8 v10, v6, -0x5

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    :cond_4
    const/4 v6, 0x1

    move v7, v11

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    if-lt v6, v10, :cond_6

    add-int/lit8 v5, v6, -0x5

    add-int/2addr v9, v5

    add-int/2addr v8, v9

    :cond_6
    move v5, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return v5
.end method

.method static applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v0, v4

    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-ge v0, v6, :cond_2

    move v6, v5

    move v5, v4

    :goto_1
    add-int/lit8 v7, v2, -0x1

    if-ge v5, v7, :cond_1

    aget-object v7, v1, v0

    aget-byte v7, v7, v5

    aget-object v8, v1, v0

    add-int/lit8 v9, v5, 0x1

    aget-byte v8, v8, v9

    if-ne v7, v8, :cond_0

    add-int/lit8 v8, v0, 0x1

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v7, v8, :cond_0

    add-int/lit8 v8, v0, 0x1

    aget-object v8, v1, v8

    add-int/lit8 v9, v5, 0x1

    aget-byte v8, v8, v9

    if-ne v7, v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v5, v6

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    mul-int/2addr v0, v5

    return v0
.end method

.method static applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v0, v4

    :goto_0
    if-ge v0, v3, :cond_5

    move v6, v5

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_4

    aget-object v7, v1, v0

    add-int/lit8 v8, v5, 0x6

    const/4 v9, 0x1

    if-ge v8, v2, :cond_1

    aget-byte v8, v7, v5

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v7, v8

    if-nez v8, :cond_1

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, v7, v8

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v5, 0x3

    aget-byte v8, v7, v8

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v5, 0x4

    aget-byte v8, v7, v8

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v5, 0x5

    aget-byte v8, v7, v8

    if-nez v8, :cond_1

    add-int/lit8 v8, v5, 0x6

    aget-byte v8, v7, v8

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v5, -0x4

    invoke-static {v7, v8, v5}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v8, v5, 0x7

    add-int/lit8 v10, v5, 0xb

    invoke-static {v7, v8, v10}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteHorizontal([BII)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v8, v0, 0x6

    if-ge v8, v3, :cond_3

    aget-object v8, v1, v0

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, v0, 0x1

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-nez v8, :cond_3

    add-int/lit8 v8, v0, 0x2

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, v0, 0x3

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, v0, 0x4

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, v0, 0x5

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-nez v8, :cond_3

    add-int/lit8 v8, v0, 0x6

    aget-object v8, v1, v8

    aget-byte v8, v8, v5

    if-ne v8, v9, :cond_3

    add-int/lit8 v8, v0, -0x4

    invoke-static {v1, v5, v8, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v8

    if-nez v8, :cond_2

    add-int/lit8 v8, v0, 0x7

    add-int/lit8 v9, v0, 0xb

    invoke-static {v1, v5, v8, v9}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->isWhiteVertical([[BIII)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v5, v6

    goto/16 :goto_0

    :cond_5
    mul-int/lit8 v0, v5, 0x28

    return v0
.end method

.method static applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v0, v4

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v6, v1, v0

    move v7, v5

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_1

    aget-byte v8, v6, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v5, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v4

    mul-int/2addr v0, v4

    mul-int/lit8 v4, v5, 0x2

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    div-int/2addr v4, v0

    mul-int/lit8 v6, v4, 0xa

    return v6
.end method

.method static getDataMaskBit(III)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mask pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    mul-int v2, p2, p1

    rem-int/lit8 v3, v2, 0x3

    add-int v4, p2, p1

    and-int/2addr v4, v1

    add-int/2addr v3, v4

    and-int/2addr v3, v1

    goto :goto_1

    :pswitch_1
    mul-int v2, p2, p1

    and-int/lit8 v3, v2, 0x1

    rem-int/lit8 v4, v2, 0x3

    add-int/2addr v3, v4

    and-int/2addr v3, v1

    goto :goto_1

    :pswitch_2
    mul-int v2, p2, p1

    and-int/lit8 v3, v2, 0x1

    rem-int/lit8 v4, v2, 0x3

    add-int/2addr v3, v4

    goto :goto_1

    :pswitch_3
    ushr-int/lit8 v2, p2, 0x1

    div-int/lit8 v3, p1, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v3, v2, 0x1

    goto :goto_0

    :pswitch_4
    add-int v2, p2, p1

    rem-int/lit8 v3, v2, 0x3

    goto :goto_0

    :pswitch_5
    rem-int/lit8 v3, p1, 0x3

    goto :goto_0

    :pswitch_6
    and-int/lit8 v3, p2, 0x1

    goto :goto_0

    :pswitch_7
    add-int v2, p2, p1

    and-int/lit8 v3, v2, 0x1

    nop

    :goto_0
    move v2, v0

    :goto_1
    if-nez v3, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isWhiteHorizontal([BII)Z
    .locals 3

    move v0, p1

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p2, :cond_1

    if-ltz v0, :cond_0

    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isWhiteVertical([[BIII)Z
    .locals 3

    move v0, p2

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p3, :cond_1

    if-ltz v0, :cond_0

    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    aget-byte v2, v2, p1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

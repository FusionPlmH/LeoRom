.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;
.super Landroid/view/View;
.source "FingerView.java"


# instance fields
.field private final CIRCLE_SIZE:F

.field private final TAG:Ljava/lang/String;

.field private greyColor:I

.field private height:I

.field private mCenterX:F

.field private mCenterY:F

.field private mCircleX:F

.field private mCircleY:F

.field private mEnrollType:I

.field protected mIsFourGuides:Z

.field private mRadius:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->TAG:Ljava/lang/String;

    const/high16 v0, 0x42aa0000    # 85.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->CIRCLE_SIZE:F

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iput p5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->greyColor:I

    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->width:I

    iput p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->height:I

    iput p6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mEnrollType:I

    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    return-void
.end method

.method private setCircleValue(F)V
    .locals 11

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mEnrollType:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x42c80000    # 100.0f

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const/16 v1, 0x51

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    iput v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    iput v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    cmpg-float v4, p1, v0

    if-gtz v4, :cond_0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_0
    cmpg-float v0, p1, v2

    if-gtz v0, :cond_1

    int-to-float v0, v1

    div-float v2, p1, v2

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_1
    int-to-float v0, v1

    rsub-int v2, v1, 0x12c

    int-to-float v2, v2

    div-float v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :pswitch_1
    const/high16 v1, 0x42a00000    # 80.0f

    cmpg-float v4, p1, v1

    const/high16 v5, 0x42ba0000    # 93.0f

    const/high16 v6, 0x42be0000    # 95.0f

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v8, 0x40e00000    # 7.0f

    const/high16 v9, 0x42aa0000    # 85.0f

    if-gtz v4, :cond_13

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    goto/16 :goto_4

    :cond_2
    const/high16 v0, 0x41980000    # 19.0f

    cmpg-float v4, p1, v0

    if-gtz v4, :cond_3

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    const/high16 v1, 0x42d20000    # 105.0f

    div-float v0, p1, v0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_3
    const/high16 v4, 0x41d80000    # 27.0f

    cmpg-float v10, p1, v4

    if-gtz v10, :cond_4

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v2, 0x42e60000    # 115.0f

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v2, 0x42820000    # 65.0f

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    sub-float v0, p1, v0

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    mul-float/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_4
    const/high16 v0, 0x42080000    # 34.0f

    cmpg-float v10, p1, v0

    if-gtz v10, :cond_6

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mEnrollType:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x42fa0000    # 125.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x42480000    # 50.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x43010000    # 129.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x42480000    # 50.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    :goto_0
    sub-float v0, p1, v4

    div-float/2addr v0, v8

    mul-float/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_6
    const/high16 v4, 0x42240000    # 41.0f

    cmpg-float v10, p1, v4

    if-gtz v10, :cond_7

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v2, 0x42f40000    # 122.0f

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    add-float/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    sub-float v0, p1, v0

    div-float/2addr v0, v8

    mul-float/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_7
    const/high16 v0, 0x423c0000    # 47.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_8

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x42f40000    # 122.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x42880000    # 68.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    sub-float v0, p1, v4

    div-float/2addr v0, v7

    mul-float/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_8
    const/high16 v0, 0x42540000    # 53.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_9

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x41c80000    # 25.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x42d60000    # 107.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    const/high16 v0, 0x423c0000    # 47.0f

    sub-float v0, p1, v0

    div-float/2addr v0, v7

    mul-float/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_9
    const/high16 v0, 0x42640000    # 57.0f

    cmpg-float v0, p1, v0

    const/high16 v4, 0x40800000    # 4.0f

    if-gtz v0, :cond_a

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x42c40000    # 98.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x42f80000    # 124.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    const/high16 v0, 0x42540000    # 53.0f

    sub-float v0, p1, v0

    div-float/2addr v0, v4

    mul-float/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_a
    const/high16 v0, 0x427c0000    # 63.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_b

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    const/high16 v0, 0x42640000    # 57.0f

    sub-float v0, p1, v0

    div-float/2addr v0, v7

    mul-float/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_b
    const/high16 v0, 0x42860000    # 67.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_d

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mEnrollType:I

    if-nez v0, :cond_c

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x43290000    # 169.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    goto :goto_1

    :cond_c
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x42d00000    # 104.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x43320000    # 178.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    :goto_1
    const/high16 v0, 0x427c0000    # 63.0f

    sub-float v0, p1, v0

    div-float/2addr v0, v4

    mul-float/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_d
    const/high16 v0, 0x428e0000    # 71.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_f

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mEnrollType:I

    if-nez v0, :cond_e

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x41f00000    # 30.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    goto :goto_2

    :cond_e
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x41e80000    # 29.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x43400000    # 192.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    :goto_2
    const/high16 v0, 0x42860000    # 67.0f

    sub-float v0, p1, v0

    div-float/2addr v0, v4

    mul-float/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_f
    const/high16 v0, 0x42960000    # 75.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_10

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x43270000    # 167.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    const/high16 v0, 0x428e0000    # 71.0f

    sub-float v0, p1, v0

    div-float/2addr v0, v4

    mul-float/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_10
    const/high16 v0, 0x429e0000    # 79.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_11

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x42ce0000    # 103.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x43160000    # 150.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    const/high16 v0, 0x42960000    # 75.0f

    sub-float v0, p1, v0

    div-float/2addr v0, v4

    mul-float/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_11
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_1a

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mEnrollType:I

    if-nez v0, :cond_12

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x41400000    # 12.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x433c0000    # 188.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    goto :goto_3

    :cond_12
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x41300000    # 11.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x43520000    # 210.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    :goto_3
    const/high16 v0, 0x429e0000    # 79.0f

    sub-float v0, p1, v0

    div-float/2addr v0, v2

    mul-float/2addr v9, v0

    iput v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_13
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mIsFourGuides:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mEnrollType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    cmpg-float v0, p1, v9

    const/high16 v2, 0x40a00000    # 5.0f

    if-gtz v0, :cond_14

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const v3, 0x43858000    # 267.0f

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    const/high16 v0, 0x438c0000    # 280.0f

    sub-float v1, p1, v1

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_14
    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_15

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x43370000    # 183.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    const/high16 v0, 0x435c0000    # 220.0f

    sub-float v1, p1, v9

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto/16 :goto_4

    :cond_15
    cmpg-float v0, p1, v6

    if-gtz v0, :cond_16

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x431f0000    # 159.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x43110000    # 145.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    const/high16 v0, 0x435c0000    # 220.0f

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v1, p1, v1

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto :goto_4

    :cond_16
    cmpg-float v0, p1, v3

    if-gtz v0, :cond_1a

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const v1, 0x43838000    # 263.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    const/high16 v0, 0x43340000    # 180.0f

    sub-float v1, p1, v6

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto :goto_4

    :cond_17
    const/high16 v0, 0x42ae0000    # 87.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_18

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const v2, 0x43858000    # 267.0f

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    const/high16 v0, 0x438c0000    # 280.0f

    sub-float v1, p1, v1

    div-float/2addr v1, v8

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto :goto_4

    :cond_18
    cmpg-float v0, p1, v5

    if-gtz v0, :cond_19

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x43370000    # 183.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    const/high16 v0, 0x437a0000    # 250.0f

    const/high16 v1, 0x42ae0000    # 87.0f

    sub-float v1, p1, v1

    div-float/2addr v1, v7

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    goto :goto_4

    :cond_19
    cmpg-float v0, p1, v3

    if-gtz v0, :cond_1a

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterX:F

    const/high16 v1, 0x431f0000    # 159.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCenterY:F

    const/high16 v1, 0x43110000    # 145.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    const/high16 v0, 0x437a0000    # 250.0f

    sub-float v1, p1, v5

    div-float/2addr v1, v8

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    :cond_1a
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public destroyDrawingCache()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->clearAnimation()V

    invoke-super {p0}, Landroid/view/View;->destroyDrawingCache()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->greyColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, 0xff

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleX:F

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mCircleY:F

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mRadius:F

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setPaintAlpha(I)V
    .locals 0

    return-void
.end method

.method public setPercent(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setCircleValue(F)V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->invalidate()V

    return-void
.end method

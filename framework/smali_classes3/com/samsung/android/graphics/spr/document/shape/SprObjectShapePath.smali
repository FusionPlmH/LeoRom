.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;,
        Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;
    }
.end annotation


# static fields
.field public static final TYPE_BEZIER_CURVETO:B = 0x4t

.field public static final TYPE_CLOSE:B = 0x6t

.field public static final TYPE_ELLIPTICAL_ARC:B = 0x5t

.field public static final TYPE_LINETO:B = 0x2t

.field public static final TYPE_MOVETO:B = 0x1t

.field public static final TYPE_NONE:B = 0x0t

.field public static final TYPE_QUADRATIC_CURVETO:B = 0x3t


# instance fields
.field public final mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

.field public mPathInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;",
            ">;"
        }
    .end annotation
.end field

.field public path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private addCommand([FCC[F)V
    .locals 25

    move-object/from16 v10, p0

    move-object/from16 v12, p4

    const/4 v0, 0x2

    const/4 v13, 0x0

    aget v1, p1, v13

    const/4 v14, 0x1

    aget v2, p1, v14

    const/4 v15, 0x2

    aget v3, p1, v15

    const/16 v16, 0x3

    aget v4, p1, v16

    sparse-switch p3, :sswitch_data_0

    :goto_0
    move/from16 v17, v0

    goto :goto_1

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->close()V

    return-void

    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x7

    goto :goto_0

    :goto_1
    move/from16 v7, p2

    move v9, v1

    move v8, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move v0, v13

    :goto_2
    move v6, v0

    array-length v0, v12

    if-ge v6, v0, :cond_c

    const/16 v0, 0x73

    const/16 v1, 0x63

    const/16 v2, 0x54

    const/16 v3, 0x51

    const/16 v4, 0x74

    const/16 v5, 0x71

    const/high16 v20, 0x40000000    # 2.0f

    const/16 v21, 0x0

    sparse-switch p3, :sswitch_data_1

    move/from16 v23, v6

    move v14, v7

    move v13, v8

    move v11, v9

    goto/16 :goto_d

    :sswitch_6
    add-int/lit8 v0, v6, 0x0

    aget v0, v12, v0

    add-float/2addr v8, v0

    invoke-virtual {v10, v9, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    nop

    :goto_3
    move/from16 v23, v6

    goto/16 :goto_5

    :sswitch_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eq v7, v5, :cond_0

    if-eq v7, v4, :cond_0

    if-eq v7, v3, :cond_0

    if-ne v7, v2, :cond_1

    :cond_0
    sub-float v0, v9, v18

    sub-float v1, v8, v19

    :cond_1
    add-float v2, v9, v0

    add-float v3, v8, v1

    add-int/lit8 v4, v6, 0x0

    aget v4, v12, v4

    add-float/2addr v4, v9

    add-int/lit8 v5, v6, 0x1

    aget v5, v12, v5

    add-float/2addr v5, v8

    invoke-virtual {v10, v2, v3, v4, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    add-float v2, v9, v0

    add-float v3, v8, v1

    add-int/lit8 v4, v6, 0x0

    aget v4, v12, v4

    add-float/2addr v9, v4

    add-int/lit8 v4, v6, 0x1

    aget v4, v12, v4

    add-float/2addr v8, v4

    nop

    move/from16 v18, v2

    move/from16 v19, v3

    goto :goto_3

    :sswitch_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v7, v1, :cond_2

    if-eq v7, v0, :cond_2

    const/16 v0, 0x43

    if-eq v7, v0, :cond_2

    const/16 v0, 0x53

    if-ne v7, v0, :cond_3

    :cond_2
    sub-float v2, v9, v18

    sub-float v3, v8, v19

    :cond_3
    move/from16 v20, v2

    move/from16 v21, v3

    add-float v1, v9, v20

    add-float v2, v8, v21

    add-int/lit8 v0, v6, 0x0

    aget v0, v12, v0

    add-float v3, v9, v0

    add-int/lit8 v0, v6, 0x1

    aget v0, v12, v0

    add-float v4, v8, v0

    add-int/lit8 v0, v6, 0x2

    aget v0, v12, v0

    add-float v5, v9, v0

    add-int/lit8 v0, v6, 0x3

    aget v0, v12, v0

    add-float v22, v8, v0

    move-object v0, v10

    move/from16 v23, v6

    move/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    add-int/lit8 v6, v23, 0x0

    aget v0, v12, v6

    add-float/2addr v0, v9

    add-int/lit8 v6, v23, 0x1

    aget v1, v12, v6

    add-float/2addr v1, v8

    add-int/lit8 v6, v23, 0x2

    aget v2, v12, v6

    add-float/2addr v9, v2

    add-int/lit8 v6, v23, 0x3

    aget v2, v12, v6

    add-float/2addr v8, v2

    goto/16 :goto_4

    :sswitch_9
    move/from16 v23, v6

    add-int/lit8 v6, v23, 0x0

    aget v0, v12, v6

    add-float/2addr v0, v9

    add-int/lit8 v6, v23, 0x1

    aget v1, v12, v6

    add-float/2addr v1, v8

    add-int/lit8 v6, v23, 0x2

    aget v2, v12, v6

    add-float/2addr v2, v9

    add-int/lit8 v6, v23, 0x3

    aget v3, v12, v6

    add-float/2addr v3, v8

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    add-int/lit8 v6, v23, 0x0

    aget v0, v12, v6

    add-float/2addr v0, v9

    add-int/lit8 v6, v23, 0x1

    aget v1, v12, v6

    add-float/2addr v1, v8

    add-int/lit8 v6, v23, 0x2

    aget v2, v12, v6

    add-float/2addr v9, v2

    add-int/lit8 v6, v23, 0x3

    aget v2, v12, v6

    add-float/2addr v8, v2

    goto :goto_4

    :sswitch_a
    move/from16 v23, v6

    add-int/lit8 v6, v23, 0x0

    aget v0, v12, v6

    add-float/2addr v9, v0

    add-int/lit8 v6, v23, 0x1

    aget v0, v12, v6

    add-float/2addr v8, v0

    invoke-virtual {v10, v9, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    goto :goto_5

    :sswitch_b
    move/from16 v23, v6

    add-int/lit8 v6, v23, 0x0

    aget v0, v12, v6

    add-float/2addr v9, v0

    add-int/lit8 v6, v23, 0x1

    aget v0, v12, v6

    add-float/2addr v8, v0

    invoke-virtual {v10, v9, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto :goto_5

    :sswitch_c
    move/from16 v23, v6

    add-int/lit8 v6, v23, 0x0

    aget v0, v12, v6

    add-float/2addr v9, v0

    invoke-virtual {v10, v9, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto :goto_5

    :sswitch_d
    move/from16 v23, v6

    add-int/lit8 v6, v23, 0x0

    aget v0, v12, v6

    add-float v1, v9, v0

    add-int/lit8 v6, v23, 0x1

    aget v0, v12, v6

    add-float v2, v8, v0

    add-int/lit8 v6, v23, 0x2

    aget v0, v12, v6

    add-float v3, v9, v0

    add-int/lit8 v6, v23, 0x3

    aget v0, v12, v6

    add-float v4, v8, v0

    add-int/lit8 v6, v23, 0x4

    aget v0, v12, v6

    add-float v5, v9, v0

    add-int/lit8 v6, v23, 0x5

    aget v0, v12, v6

    add-float v6, v8, v0

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    add-int/lit8 v6, v23, 0x2

    aget v0, v12, v6

    add-float/2addr v0, v9

    add-int/lit8 v6, v23, 0x3

    aget v1, v12, v6

    add-float/2addr v1, v8

    add-int/lit8 v6, v23, 0x4

    aget v2, v12, v6

    add-float/2addr v9, v2

    add-int/lit8 v6, v23, 0x5

    aget v2, v12, v6

    add-float/2addr v8, v2

    nop

    :goto_4
    move/from16 v18, v0

    move/from16 v19, v1

    :goto_5
    move v14, v7

    goto/16 :goto_d

    :sswitch_e
    move/from16 v23, v6

    add-int/lit8 v6, v23, 0x5

    aget v0, v12, v6

    add-float v3, v0, v9

    add-int/lit8 v6, v23, 0x6

    aget v0, v12, v6

    add-float v4, v0, v8

    add-int/lit8 v6, v23, 0x0

    aget v5, v12, v6

    add-int/lit8 v6, v23, 0x1

    aget v6, v12, v6

    add-int/lit8 v0, v23, 0x2

    aget v20, v12, v0

    add-int/lit8 v0, v23, 0x3

    aget v0, v12, v0

    cmpl-float v0, v0, v21

    if-eqz v0, :cond_4

    move/from16 v22, v14

    goto :goto_6

    :cond_4
    move/from16 v22, v13

    :goto_6
    add-int/lit8 v0, v23, 0x4

    aget v0, v12, v0

    cmpl-float v0, v0, v21

    if-eqz v0, :cond_5

    move/from16 v21, v14

    goto :goto_7

    :cond_5
    move/from16 v21, v13

    :goto_7
    move-object v0, v10

    move v1, v9

    move v2, v8

    move v14, v7

    move/from16 v7, v20

    move v13, v8

    move/from16 v8, v22

    move v11, v9

    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    add-int/lit8 v6, v23, 0x5

    aget v0, v12, v6

    add-float v9, v11, v0

    add-int/lit8 v6, v23, 0x6

    aget v0, v12, v6

    add-float v8, v13, v0

    move v0, v9

    move v1, v8

    goto/16 :goto_a

    :sswitch_f
    move/from16 v23, v6

    move v14, v7

    move v13, v8

    move v11, v9

    add-int/lit8 v6, v23, 0x0

    aget v8, v12, v6

    invoke-virtual {v10, v11, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_d

    :sswitch_10
    move/from16 v23, v6

    move v14, v7

    move v13, v8

    move v11, v9

    move v0, v11

    move v1, v13

    if-eq v14, v5, :cond_6

    if-eq v14, v4, :cond_6

    if-eq v14, v3, :cond_6

    if-ne v14, v2, :cond_7

    :cond_6
    mul-float v9, v20, v11

    sub-float v0, v9, v18

    mul-float v20, v20, v13

    sub-float v1, v20, v19

    :cond_7
    add-int/lit8 v6, v23, 0x0

    aget v2, v12, v6

    add-int/lit8 v6, v23, 0x1

    aget v3, v12, v6

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    move v2, v0

    move v3, v1

    add-int/lit8 v6, v23, 0x0

    aget v9, v12, v6

    add-int/lit8 v6, v23, 0x1

    aget v8, v12, v6

    nop

    move/from16 v18, v2

    move/from16 v19, v3

    goto/16 :goto_d

    :sswitch_11
    move/from16 v23, v6

    move v14, v7

    move v13, v8

    move v11, v9

    move v2, v11

    move v3, v13

    if-eq v14, v1, :cond_9

    if-eq v14, v0, :cond_9

    const/16 v0, 0x43

    if-eq v14, v0, :cond_9

    const/16 v0, 0x53

    if-ne v14, v0, :cond_8

    goto :goto_8

    :cond_8
    move v9, v2

    move/from16 v20, v3

    goto :goto_9

    :cond_9
    :goto_8
    mul-float v9, v20, v11

    sub-float v9, v9, v18

    mul-float v20, v20, v13

    sub-float v20, v20, v19

    :goto_9
    add-int/lit8 v6, v23, 0x0

    aget v3, v12, v6

    add-int/lit8 v6, v23, 0x1

    aget v4, v12, v6

    add-int/lit8 v6, v23, 0x2

    aget v5, v12, v6

    add-int/lit8 v6, v23, 0x3

    aget v6, v12, v6

    move-object v0, v10

    move v1, v9

    move/from16 v2, v20

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    add-int/lit8 v6, v23, 0x0

    aget v0, v12, v6

    add-int/lit8 v6, v23, 0x1

    aget v1, v12, v6

    add-int/lit8 v6, v23, 0x2

    aget v2, v12, v6

    add-int/lit8 v6, v23, 0x3

    aget v8, v12, v6

    nop

    move/from16 v18, v0

    move/from16 v19, v1

    move v9, v2

    goto/16 :goto_d

    :sswitch_12
    move/from16 v23, v6

    move v14, v7

    move v13, v8

    move v11, v9

    add-int/lit8 v6, v23, 0x0

    aget v0, v12, v6

    add-int/lit8 v6, v23, 0x1

    aget v1, v12, v6

    add-int/lit8 v6, v23, 0x2

    aget v2, v12, v6

    add-int/lit8 v6, v23, 0x3

    aget v3, v12, v6

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    add-int/lit8 v6, v23, 0x0

    aget v0, v12, v6

    add-int/lit8 v6, v23, 0x1

    aget v1, v12, v6

    add-int/lit8 v6, v23, 0x2

    aget v9, v12, v6

    add-int/lit8 v6, v23, 0x3

    aget v8, v12, v6

    goto/16 :goto_a

    :sswitch_13
    move/from16 v23, v6

    move v14, v7

    move v13, v8

    move v11, v9

    add-int/lit8 v6, v23, 0x0

    aget v9, v12, v6

    add-int/lit8 v6, v23, 0x1

    aget v8, v12, v6

    invoke-virtual {v10, v9, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    goto/16 :goto_d

    :sswitch_14
    move/from16 v23, v6

    move v14, v7

    move v13, v8

    move v11, v9

    add-int/lit8 v6, v23, 0x0

    aget v9, v12, v6

    add-int/lit8 v6, v23, 0x1

    aget v8, v12, v6

    invoke-virtual {v10, v9, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_d

    :sswitch_15
    move/from16 v23, v6

    move v14, v7

    move v13, v8

    move v11, v9

    add-int/lit8 v6, v23, 0x0

    aget v9, v12, v6

    invoke-virtual {v10, v9, v13}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto/16 :goto_d

    :sswitch_16
    move/from16 v23, v6

    move v14, v7

    move v13, v8

    move v11, v9

    add-int/lit8 v6, v23, 0x0

    aget v1, v12, v6

    add-int/lit8 v6, v23, 0x1

    aget v2, v12, v6

    add-int/lit8 v6, v23, 0x2

    aget v3, v12, v6

    add-int/lit8 v6, v23, 0x3

    aget v4, v12, v6

    add-int/lit8 v6, v23, 0x4

    aget v5, v12, v6

    add-int/lit8 v6, v23, 0x5

    aget v6, v12, v6

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    add-int/lit8 v6, v23, 0x4

    aget v9, v12, v6

    add-int/lit8 v6, v23, 0x5

    aget v8, v12, v6

    add-int/lit8 v6, v23, 0x2

    aget v0, v12, v6

    add-int/lit8 v6, v23, 0x3

    aget v1, v12, v6

    nop

    :goto_a
    move/from16 v18, v0

    move/from16 v19, v1

    goto :goto_d

    :sswitch_17
    move/from16 v23, v6

    move v14, v7

    move v13, v8

    move v11, v9

    add-int/lit8 v6, v23, 0x5

    aget v3, v12, v6

    add-int/lit8 v6, v23, 0x6

    aget v4, v12, v6

    add-int/lit8 v6, v23, 0x0

    aget v5, v12, v6

    add-int/lit8 v6, v23, 0x1

    aget v6, v12, v6

    add-int/lit8 v0, v23, 0x2

    aget v7, v12, v0

    add-int/lit8 v0, v23, 0x3

    aget v0, v12, v0

    cmpl-float v0, v0, v21

    if-eqz v0, :cond_a

    const/4 v8, 0x1

    goto :goto_b

    :cond_a
    const/4 v8, 0x0

    :goto_b
    add-int/lit8 v0, v23, 0x4

    aget v0, v12, v0

    cmpl-float v0, v0, v21

    if-eqz v0, :cond_b

    const/4 v9, 0x1

    goto :goto_c

    :cond_b
    const/4 v9, 0x0

    :goto_c
    move-object v0, v10

    move v1, v11

    move v2, v13

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    add-int/lit8 v6, v23, 0x5

    aget v9, v12, v6

    add-int/lit8 v6, v23, 0x6

    aget v8, v12, v6

    move v0, v9

    move v1, v8

    goto :goto_a

    :goto_d
    move/from16 v7, p3

    add-int v0, v23, v17

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_c
    move v14, v7

    move v13, v8

    move v11, v9

    const/4 v1, 0x0

    aput v9, p1, v1

    const/4 v1, 0x1

    aput v13, p1, v1

    aput v18, p1, v15

    aput v19, p1, v16

    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_2
        0x56 -> :sswitch_3
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_2
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_2
        0x76 -> :sswitch_3
        0x7a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_16
        0x48 -> :sswitch_15
        0x4c -> :sswitch_14
        0x4d -> :sswitch_13
        0x51 -> :sswitch_12
        0x53 -> :sswitch_11
        0x54 -> :sswitch_10
        0x56 -> :sswitch_f
        0x61 -> :sswitch_e
        0x63 -> :sswitch_d
        0x68 -> :sswitch_c
        0x6c -> :sswitch_b
        0x6d -> :sswitch_a
        0x71 -> :sswitch_9
        0x73 -> :sswitch_8
        0x74 -> :sswitch_7
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method private arcToBezier(DDDDDDDDD)V
    .locals 76

    move-wide/from16 v0, p5

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double v8, p17, v6

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move-wide/from16 v9, p15

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    neg-double v6, v0

    mul-double/2addr v6, v11

    mul-double v6, v6, v17

    mul-double v21, p7, v13

    mul-double v21, v21, v15

    sub-double v6, v6, v21

    move-wide/from16 v23, v6

    neg-double v6, v0

    mul-double/2addr v6, v13

    mul-double v6, v6, v17

    mul-double v21, p7, v11

    mul-double v21, v21, v15

    add-double v6, v6, v21

    move-wide/from16 v25, v6

    int-to-double v6, v8

    div-double v6, p17, v6

    const/16 v21, 0x0

    move-wide/from16 v28, v25

    move-wide/from16 v26, p11

    move-wide/from16 v24, v23

    move-wide/from16 v22, p9

    :goto_0
    move/from16 v30, v21

    move/from16 v4, v30

    if-ge v4, v8, :cond_0

    move/from16 v31, v4

    add-double v4, v9, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v36, v0, v11

    mul-double v36, v36, v34

    add-double v36, p1, v36

    mul-double v38, p7, v13

    mul-double v38, v38, v32

    move-wide/from16 v40, v6

    sub-double v6, v36, v38

    mul-double v36, v0, v13

    mul-double v36, v36, v34

    add-double v36, p3, v36

    mul-double v42, p7, v11

    mul-double v42, v42, v32

    move-wide/from16 v44, v6

    add-double v6, v36, v42

    move-wide/from16 v46, v6

    neg-double v6, v0

    mul-double/2addr v6, v11

    mul-double v6, v6, v32

    mul-double v36, p7, v13

    mul-double v36, v36, v34

    sub-double v6, v6, v36

    move-wide/from16 v48, v6

    neg-double v6, v0

    mul-double/2addr v6, v13

    mul-double v6, v6, v32

    mul-double v36, p7, v11

    mul-double v36, v36, v34

    add-double v6, v6, v36

    sub-double v36, v4, v9

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    div-double v0, v36, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sub-double v2, v4, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v36, 0x4008000000000000L    # 3.0

    mul-double v42, v36, v0

    mul-double v42, v42, v0

    move-wide/from16 v50, v0

    const-wide/high16 v19, 0x4010000000000000L    # 4.0

    add-double v0, v19, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-double v0, v0, v42

    mul-double/2addr v2, v0

    div-double v2, v2, v36

    mul-double v0, v2, v24

    add-double v0, v22, v0

    mul-double v36, v2, v28

    move/from16 v52, v8

    move-wide/from16 v53, v9

    add-double v8, v26, v36

    mul-double v36, v2, v48

    move-wide/from16 v55, v11

    sub-double v10, v44, v36

    mul-double v36, v2, v6

    move-wide/from16 v57, v2

    sub-double v2, v46, v36

    double-to-float v12, v0

    move-wide/from16 v66, v0

    double-to-float v0, v8

    double-to-float v1, v10

    move-wide/from16 v68, v8

    double-to-float v8, v2

    move-wide/from16 v70, v2

    move-wide/from16 v2, v44

    double-to-float v9, v2

    move-wide/from16 v72, v10

    move-wide/from16 v74, v13

    move-wide/from16 v10, v46

    double-to-float v13, v10

    move-object/from16 v59, p0

    move/from16 v60, v12

    move/from16 v61, v0

    move/from16 v62, v1

    move/from16 v63, v8

    move/from16 v64, v9

    move/from16 v65, v13

    invoke-virtual/range {v59 .. v65}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    move-wide v0, v4

    move-wide/from16 v22, v2

    move-wide/from16 v26, v10

    move-wide/from16 v24, v48

    move-wide/from16 v28, v6

    add-int/lit8 v21, v31, 0x1

    move-wide v9, v0

    move-wide/from16 v6, v40

    move/from16 v8, v52

    move-wide/from16 v11, v55

    move-wide/from16 v13, v74

    move-wide/from16 v0, p5

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v40, v6

    move/from16 v52, v8

    move-wide/from16 v53, v9

    move-wide/from16 v55, v11

    move-wide/from16 v74, v13

    return-void
.end method

.method private createNodesFromPathData(Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x6d

    const/4 v3, 0x4

    new-array v3, v3, [F

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-ge v1, v4, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->nextStart(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->getFloats(Ljava/lang/String;)[F

    move-result-object v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v3, v2, v7, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->addCommand([FCC[F)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :cond_1
    move v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int v4, v1, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    new-array v5, v5, [F

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->addCommand([FCC[F)V

    :cond_3
    return-void
.end method

.method private drawArc(FFFFFFFZZ)V
    .locals 74

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v9, p9

    move/from16 v8, p7

    float-to-double v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    float-to-double v0, v10

    mul-double v0, v0, v35

    float-to-double v2, v11

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v14

    div-double v39, v0, v2

    neg-float v0, v10

    float-to-double v0, v0

    mul-double v0, v0, v37

    float-to-double v2, v11

    mul-double v2, v2, v35

    add-double/2addr v0, v2

    float-to-double v2, v15

    div-double v41, v0, v2

    float-to-double v0, v12

    mul-double v0, v0, v35

    float-to-double v2, v13

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v14

    div-double v43, v0, v2

    neg-float v0, v12

    float-to-double v0, v0

    mul-double v0, v0, v37

    float-to-double v2, v13

    mul-double v2, v2, v35

    add-double/2addr v0, v2

    float-to-double v2, v15

    div-double v45, v0, v2

    sub-double v47, v39, v43

    sub-double v49, v41, v45

    add-double v0, v39, v43

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v51, v0, v2

    add-double v0, v41, v45

    div-double v53, v0, v2

    mul-double v0, v47, v47

    mul-double v2, v49, v49

    add-double v4, v0, v2

    const-wide/16 v0, 0x0

    cmpl-double v2, v4, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v4

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    sub-double v2, v2, v16

    cmpg-double v16, v2, v0

    if-gez v16, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v16, 0x3ffffff583a53b8eL    # 1.99999

    div-double v0, v0, v16

    double-to-float v1, v0

    mul-float v16, v14, v1

    mul-float v17, v15, v1

    move-object/from16 v0, p0

    move/from16 v18, v1

    move v1, v10

    move-wide v14, v2

    move v2, v11

    move v3, v12

    move-wide/from16 v57, v4

    move v4, v13

    move/from16 v5, v16

    move-wide/from16 v59, v6

    move/from16 v6, v17

    move v7, v8

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawArc(FFFFFFFZZ)V

    return-void

    :cond_1
    move-wide v14, v2

    move-wide/from16 v57, v4

    move-wide/from16 v59, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v4, v2, v47

    mul-double v6, v2, v49

    move/from16 v8, p8

    move/from16 v9, p9

    if-ne v8, v9, :cond_2

    sub-double v16, v51, v6

    add-double v18, v53, v4

    goto :goto_0

    :cond_2
    add-double v16, v51, v6

    sub-double v18, v53, v4

    :goto_0
    sub-double v0, v41, v18

    move-wide/from16 v63, v2

    sub-double v2, v39, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v2, v45, v18

    move-wide/from16 v65, v4

    sub-double v4, v43, v16

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double v4, v2, v0

    const-wide/16 v20, 0x0

    cmpl-double v22, v4, v20

    if-ltz v22, :cond_3

    const/16 v22, 0x1

    :goto_1
    move-wide/from16 v67, v2

    move/from16 v2, v22

    goto :goto_2

    :cond_3
    const/16 v22, 0x0

    goto :goto_1

    :goto_2
    if-eq v9, v2, :cond_5

    cmpl-double v2, v4, v20

    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v2, :cond_4

    sub-double v4, v4, v20

    goto :goto_3

    :cond_4
    add-double v4, v4, v20

    :cond_5
    :goto_3
    move-wide/from16 v69, v6

    move/from16 v2, p5

    float-to-double v6, v2

    mul-double v16, v16, v6

    move/from16 v3, p6

    float-to-double v6, v3

    mul-double v18, v18, v6

    move-wide/from16 v6, v16

    mul-double v20, v16, v35

    mul-double v22, v18, v37

    sub-double v55, v20, v22

    mul-double v16, v6, v37

    mul-double v20, v18, v35

    add-double v61, v16, v20

    move-wide/from16 v71, v6

    float-to-double v6, v2

    float-to-double v8, v3

    float-to-double v2, v10

    float-to-double v12, v11

    move-object/from16 v16, p0

    move-wide/from16 v17, v55

    move-wide/from16 v19, v61

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v2

    move-wide/from16 v27, v12

    move-wide/from16 v29, v59

    move-wide/from16 v31, v0

    move-wide/from16 v33, v4

    invoke-direct/range {v16 .. v34}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->arcToBezier(DDDDDDDDD)V

    return-void
.end method

.method private drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V
    .locals 11

    iget-byte v0, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v5, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v5, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v6, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v7, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iget v8, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget v9, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v10, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v4, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget v1, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iget v2, p1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private extract(Ljava/lang/String;ILcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;)V
    .locals 4

    move v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eq v0, p2, :cond_1

    const/4 v1, 0x1

    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    goto :goto_1

    :cond_0
    :pswitch_1
    const/4 v1, 0x1

    nop

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iput v0, p3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndPosition:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFloats(Ljava/lang/String;)[F
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;-><init>(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$1;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    :goto_0
    if-ge v2, v5, :cond_3

    invoke-direct {p0, p1, v2, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->extract(Ljava/lang/String;ILcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;)V

    iget v6, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndPosition:I

    move v3, v6

    if-ge v2, v3, :cond_1

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v0, v1

    move v1, v6

    :cond_1
    iget-boolean v6, v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$ExtractFloatResult;->mEndWithNegSign:Z

    if-eqz v6, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    throw v0

    :cond_4
    :goto_1
    new-array v0, v0, [F

    return-object v0
.end method

.method private nextStart(Ljava/lang/String;I)I
    .locals 3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_1

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p2

    :cond_2
    return p2
.end method


# virtual methods
.method public arcTo(FFFFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iput p5, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iput p6, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x6

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p5, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p6, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 3

    const/16 v0, 0x1f

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->save(I)I

    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->alpha:F

    mul-float/2addr v0, p5

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->setShadowLayer()V

    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->isVisibleFill:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->isVisibleStroke:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->clearShadowLayer()V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawPath()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->finalize()V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v10

    move v11, v5

    move v12, v6

    move v13, v8

    move v8, v4

    :goto_0
    if-ge v9, v10, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v14

    packed-switch v14, :pswitch_data_0

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsupported command type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->close()V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    add-float v17, v0, v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    add-float v18, v0, v16

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v13

    move-object v0, v7

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move v5, v12

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->arcTo(FFFFFF)V

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v11

    move-object v0, v7

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move v5, v8

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->cubicTo(FFFFFF)V

    nop

    :goto_1
    move v0, v15

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    goto :goto_2

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v5

    invoke-virtual {v7, v0, v1, v4, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->quadTo(FFFF)V

    nop

    move v8, v4

    move v11, v5

    goto :goto_2

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->lineTo(FF)V

    goto :goto_2

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readFloat()F

    move-result v1

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->moveTo(FF)V

    nop

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_22

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_d

    :cond_0
    const-string/jumbo v4, "strokeWidth"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;-><init>()V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    iget v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iget v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    const v6, 0x3e99999a    # 0.3f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    iput v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeWidth;->strokeWidth:F

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_2
    const-string/jumbo v4, "strokeOpacity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    const/16 v6, 0x23

    const v7, 0xffffff

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v10, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v10, v6, :cond_3

    move-object v4, v9

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    new-instance v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    move-object v4, v6

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    iget v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    and-int/2addr v6, v7

    shl-int/lit8 v7, v5, 0x18

    or-int/2addr v6, v7

    iput v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    goto/16 :goto_d

    :cond_6
    const-string/jumbo v4, "strokeColor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v8, -0x10000

    const/16 v9, 0x10

    const/4 v10, 0x1

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v12, v11, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v12, v6, :cond_7

    move-object v4, v11

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    goto :goto_4

    :cond_7
    goto :goto_3

    :cond_8
    :goto_4
    if-nez v4, :cond_9

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;-><init>()V

    move-object v4, v5

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    goto :goto_5

    :cond_a
    iput v8, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    :goto_5
    iget v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    const/high16 v6, -0x1000000

    and-int/2addr v5, v6

    iget v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    and-int/2addr v6, v7

    not-int v6, v6

    or-int/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;->color:I

    goto/16 :goto_d

    :cond_b
    const-string v4, "fillColor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x20

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v11, v7, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v11, v6, :cond_c

    move-object v4, v7

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    goto :goto_7

    :cond_c
    goto :goto_6

    :cond_d
    :goto_7
    if-nez v4, :cond_e

    new-instance v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    move-object v4, v5

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    goto :goto_8

    :cond_f
    iput v8, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    :goto_8
    goto/16 :goto_d

    :cond_10
    const-string v4, "fillOpacity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    iget-byte v10, v9, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->mType:B

    if-ne v10, v6, :cond_11

    move-object v4, v9

    check-cast v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    goto :goto_a

    :cond_11
    goto :goto_9

    :cond_12
    :goto_a
    if-nez v4, :cond_13

    new-instance v6, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-direct {v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>()V

    move-object v4, v6

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    iget v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    and-int/2addr v6, v7

    shl-int/lit8 v7, v5, 0x18

    or-int/2addr v6, v7

    iput v6, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;->color:I

    goto/16 :goto_d

    :cond_14
    const-string/jumbo v4, "pathData"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-direct {p0, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->createNodesFromPathData(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_15
    const-string/jumbo v4, "trimPathStart"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto/16 :goto_d

    :cond_16
    const-string/jumbo v4, "trimPathEnd"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto/16 :goto_d

    :cond_17
    const-string/jumbo v4, "trimPathOffset"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto/16 :goto_d

    :cond_18
    const-string/jumbo v4, "strokeLineCap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;-><init>()V

    const-string v5, "butt"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_BUTT:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    goto :goto_b

    :cond_19
    const-string/jumbo v5, "round"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_ROUND:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    goto :goto_b

    :cond_1a
    const-string/jumbo v5, "square"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->STROKE_LINECAP_TYPE_SQUARE:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinecap;->linecap:B

    :cond_1b
    :goto_b
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1c
    const-string/jumbo v4, "strokeLineJoin"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;-><init>()V

    const-string/jumbo v5, "miter"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_MITER:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    goto :goto_c

    :cond_1d
    const-string/jumbo v5, "round"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_ROUND:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    goto :goto_c

    :cond_1e
    const-string v5, "bevel"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    sget-byte v5, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_BEVEL:B

    iput-byte v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    :cond_1f
    :goto_c
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_20
    const-string/jumbo v4, "strokeMiterLimit"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;

    invoke-direct {v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;-><init>()V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeMiterlimit;->miterLimit:F

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_22
    return-void
.end method

.method public getSPRSize()I
    .locals 4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    iget-byte v3, v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x18

    goto :goto_1

    :pswitch_1
    add-int/lit8 v0, v0, 0x18

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, v0, 0x10

    goto :goto_1

    :pswitch_3
    add-int/lit8 v0, v0, 0x8

    nop

    :goto_1
    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTotalElementCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTotalSegmentCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public quadTo(FFFF)V
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;-><init>()V

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    iput p3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    iput p4, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    iput p1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iput p2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->drawPath(Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;)V

    return-void
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;->mPathInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->type:B

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    iget v3, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    iget v3, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_1

    :pswitch_1
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y2:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_1

    :pswitch_2
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y1:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_1

    :pswitch_3
    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->x:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath$PathInfo;->y:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    nop

    :goto_1
    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

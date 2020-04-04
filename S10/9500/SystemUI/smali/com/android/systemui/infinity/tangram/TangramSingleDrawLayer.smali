.class public Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;
.super Ljava/lang/Object;
.source "TangramSingleDrawLayer.java"

# interfaces
.implements Lcom/android/systemui/infinity/tangram/TangramObjectInterface;


# static fields
.field protected static final A_POSITION:Ljava/lang/String; = "a_Position"

.field protected static final A_TEXTURE_COORDINATES:Ljava/lang/String; = "a_TextureCoordinates"

.field protected static final A_TEXTURE_COORDINATES_MASK:Ljava/lang/String; = "a_TextureCoordinatesMask"

.field private static final POSITION_COMPONENT_COUNT:I = 0x2

.field private static final STRIDE:I = 0x18

.field private static final TEXTURE_COORDINATES_COMPONENT_COUNT:I = 0x2

.field private static final TEXTURE_COORDINATES_COMPONENT_COUNT_MASK:I = 0x2

.field private static final TOTAL_COMPONENT_COUNT:I = 0x6

.field protected static final U_ALPHA:Ljava/lang/String; = "u_Alpha"

.field protected static final U_MATRIX:Ljava/lang/String; = "u_Matrix"

.field protected static final U_TEXTURE_UNIT:Ljava/lang/String; = "u_TextureUnit"


# instance fields
.field private aPositionLocation:I

.field private aTextureCoordinatesLocation:I

.field private aTextureCoordinatesLocationMask:I

.field alpha:F

.field beforeMoveX:F

.field beforeMoveY:F

.field canvasW:F

.field context:Landroid/content/Context;

.field hFix:F

.field hFixm:F

.field height:F

.field imageH:F

.field imageHm:F

.field imageMapRatioH:F

.field imageMapRatioW:F

.field imageW:F

.field imageWm:F

.field mapH:F

.field mapW:F

.field mask_imageH:F

.field mask_imageW:F

.field maskheight:F

.field maskwidth:F

.field minMove:F

.field moveXValue:F

.field moveYValue:F

.field private program:I

.field renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

.field resourceId:I

.field sx:F

.field sy:F

.field textureId:I

.field tx:F

.field ty:F

.field tz:F

.field private uAlphaLocation:I

.field private uMaskMoveXLocation:I

.field private uMaskMoveYLocation:I

.field private uMatrixLocation:I

.field private uTextureUnitLocation:I

.field private final vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

.field private final viewMatrix:[F

.field private final viewProjectionMatrix:[F

.field wFix:F

.field wFixm:F

.field width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;IFFFFZFFFFFFFFZFFFFFFFF)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v9, p13

    move/from16 v10, p14

    move/from16 v11, p18

    move/from16 v12, p19

    move/from16 v14, p22

    move/from16 v13, p23

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v8, 0x10

    new-array v7, v8, [F

    iput-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewMatrix:[F

    new-array v7, v8, [F

    iput-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewProjectionMatrix:[F

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->sx:F

    iput v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->sy:F

    iput v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->alpha:F

    const/4 v8, 0x0

    iput v8, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->beforeMoveX:F

    iput v8, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->beforeMoveY:F

    const v7, 0x3727c5ac    # 1.0E-5f

    iput v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->minMove:F

    move-object/from16 v7, p1

    iput-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->context:Landroid/content/Context;

    move/from16 v8, p3

    iput v8, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->resourceId:I

    move-object/from16 v7, p2

    iput-object v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    iput v3, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->canvasW:F

    iput v14, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->mapW:F

    iput v13, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->mapH:F

    iput v9, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->maskwidth:F

    iput v10, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->maskheight:F

    iput v11, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->mask_imageW:F

    iput v12, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->mask_imageH:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->width:F

    iput v2, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->height:F

    div-float v7, v1, v3

    iput v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    div-float v3, v2, p7

    iput v3, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    iput v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    iput v6, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    div-float v7, v9, p15

    iput v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFixm:F

    div-float v3, v10, p16

    iput v3, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFixm:F

    iput v11, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    iput v12, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    div-float v3, v9, v11

    iput v3, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float v3, v10, v12

    iput v3, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    move/from16 v3, p24

    iput v3, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->moveXValue:F

    move/from16 v3, p25

    iput v3, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->moveYValue:F

    const/16 v20, 0x8

    const/16 v21, 0x7

    const/16 v22, 0x6

    const/16 v23, 0x5

    const/16 v24, 0x4

    const/16 v25, 0x3

    const/16 v26, 0x2

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v3, 0x24

    const/high16 v29, -0x40800000    # -1.0f

    const/high16 v30, 0x40000000    # 2.0f

    if-nez p8, :cond_0

    if-nez p17, :cond_0

    new-array v3, v3, [F

    const/16 v19, 0x0

    aput v19, v3, v28

    aput v19, v3, v27

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    div-float v7, v7, v30

    add-float v7, p11, v7

    div-float/2addr v7, v14

    aput v7, v3, v26

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    div-float v7, v7, v30

    const/16 v17, 0x10

    add-float v7, p12, v7

    div-float/2addr v7, v13

    aput v7, v3, v25

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    div-float v7, v7, v30

    move/from16 v16, v13

    add-float v7, p20, v7

    div-float/2addr v7, v14

    aput v7, v3, v24

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    div-float v7, v7, v30

    move v15, v14

    add-float v7, p21, v7

    div-float v7, v7, v16

    aput v7, v3, v23

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    mul-float v7, v7, v29

    aput v7, v3, v22

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float v7, v7, v29

    aput v7, v3, v21

    div-float v7, p11, v15

    aput v7, v3, v20

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v7, p12, v7

    div-float v7, v7, v16

    const/16 v19, 0x9

    aput v7, v3, v19

    div-float v19, p20, v15

    sub-float v20, v9, v1

    div-float v20, v20, v30

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float v20, v20, v7

    div-float v20, v20, v15

    add-float v19, v19, v20

    const/16 v7, 0xa

    aput v19, v3, v7

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v7, p21, v7

    div-float v7, v7, v16

    sub-float v19, v10, v2

    div-float v19, v19, v30

    iget v8, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float v19, v19, v8

    div-float v19, v19, v16

    sub-float v7, v7, v19

    const/16 v8, 0xb

    aput v7, v3, v8

    const/16 v7, 0xc

    iget v8, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v8, v8, v18

    aput v8, v3, v7

    const/16 v7, 0xd

    iget v8, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float v8, v8, v29

    aput v8, v3, v7

    const/16 v7, 0xe

    iget v8, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v8, v8, p11

    div-float/2addr v8, v15

    aput v8, v3, v7

    const/16 v7, 0xf

    iget v8, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v8, p12, v8

    div-float v8, v8, v16

    aput v8, v3, v7

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v7, v7, p20

    div-float/2addr v7, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v5

    div-float/2addr v8, v15

    sub-float/2addr v7, v8

    aput v7, v3, v17

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v7, p21, v7

    div-float v7, v7, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v5

    div-float v8, v8, v16

    sub-float/2addr v7, v8

    const/16 v5, 0x11

    aput v7, v3, v5

    const/16 v5, 0x12

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    aput v7, v3, v5

    const/16 v5, 0x13

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float/2addr v7, v8

    aput v7, v3, v5

    const/16 v5, 0x14

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v7, v7, p11

    div-float/2addr v7, v15

    aput v7, v3, v5

    const/16 v5, 0x15

    div-float v7, p12, v16

    aput v7, v3, v5

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v7, v7, p20

    div-float/2addr v7, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v5

    div-float/2addr v8, v15

    sub-float/2addr v7, v8

    const/16 v5, 0x16

    aput v7, v3, v5

    div-float v7, p21, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v5

    div-float v8, v8, v16

    add-float/2addr v7, v8

    const/16 v5, 0x17

    aput v7, v3, v5

    const/16 v5, 0x18

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    mul-float v7, v7, v29

    aput v7, v3, v5

    const/16 v5, 0x19

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    aput v7, v3, v5

    const/16 v5, 0x1a

    div-float v7, p11, v15

    aput v7, v3, v5

    const/16 v5, 0x1b

    div-float v7, p12, v16

    aput v7, v3, v5

    div-float v7, p20, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v5

    div-float/2addr v8, v15

    add-float/2addr v7, v8

    const/16 v5, 0x1c

    aput v7, v3, v5

    div-float v7, p21, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v5

    div-float v8, v8, v16

    add-float/2addr v7, v8

    const/16 v5, 0x1d

    aput v7, v3, v5

    const/16 v5, 0x1e

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    mul-float v7, v7, v29

    aput v7, v3, v5

    const/16 v5, 0x1f

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float v29, v29, v7

    aput v29, v3, v5

    const/16 v5, 0x20

    div-float v7, p11, v15

    aput v7, v3, v5

    const/16 v5, 0x21

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v7, p12, v7

    div-float v7, v7, v16

    aput v7, v3, v5

    div-float v7, p20, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v5

    div-float/2addr v8, v15

    add-float/2addr v7, v8

    const/16 v5, 0x22

    aput v7, v3, v5

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v7, p21, v7

    div-float v7, v7, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v5

    div-float v8, v8, v16

    sub-float/2addr v7, v8

    const/16 v5, 0x23

    aput v7, v3, v5

    new-instance v5, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v5, v3}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    nop

    :goto_0
    move/from16 v5, p9

    goto/16 :goto_1

    :cond_0
    move/from16 v16, v13

    move v15, v14

    const/16 v17, 0x10

    if-nez p8, :cond_1

    if-eqz p17, :cond_1

    iput v12, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    iput v11, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    new-array v3, v3, [F

    const/4 v5, 0x0

    aput v5, v3, v28

    aput v5, v3, v27

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    div-float v5, v5, v30

    add-float v5, p11, v5

    div-float/2addr v5, v15

    aput v5, v3, v26

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    div-float v5, v5, v30

    add-float v5, p12, v5

    div-float v5, v5, v16

    aput v5, v3, v25

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    div-float v5, v5, v30

    add-float v5, p20, v5

    div-float/2addr v5, v15

    aput v5, v3, v24

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    div-float v5, v5, v30

    add-float v5, p21, v5

    div-float v5, v5, v16

    aput v5, v3, v23

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    mul-float v5, v5, v29

    aput v5, v3, v22

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float v5, v5, v29

    aput v5, v3, v21

    div-float v5, p11, v15

    aput v5, v3, v20

    const/16 v5, 0x9

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v7, p12, v7

    div-float v7, v7, v16

    aput v7, v3, v5

    div-float v7, p20, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v5

    div-float/2addr v8, v15

    add-float/2addr v7, v8

    const/16 v5, 0xa

    aput v7, v3, v5

    div-float v7, p21, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v5

    div-float v8, v8, v16

    add-float/2addr v7, v8

    const/16 v5, 0xb

    aput v7, v3, v5

    const/16 v5, 0xc

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    aput v7, v3, v5

    const/16 v5, 0xd

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float v7, v7, v29

    aput v7, v3, v5

    const/16 v5, 0xe

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v7, v7, p11

    div-float/2addr v7, v15

    aput v7, v3, v5

    const/16 v5, 0xf

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v7, p12, v7

    div-float v7, v7, v16

    aput v7, v3, v5

    div-float v5, p20, v15

    sub-float v7, v9, v1

    div-float v7, v7, v30

    iget v8, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v7, v8

    div-float/2addr v7, v15

    add-float/2addr v5, v7

    aput v5, v3, v17

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v7, p21, v7

    div-float v7, v7, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v5

    div-float v8, v8, v16

    sub-float/2addr v7, v8

    const/16 v5, 0x11

    aput v7, v3, v5

    const/16 v5, 0x12

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    aput v7, v3, v5

    const/16 v5, 0x13

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float/2addr v7, v8

    aput v7, v3, v5

    const/16 v5, 0x14

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v7, v7, p11

    div-float/2addr v7, v15

    aput v7, v3, v5

    const/16 v5, 0x15

    div-float v7, p12, v16

    aput v7, v3, v5

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v7, v7, p20

    div-float/2addr v7, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v5

    div-float/2addr v8, v15

    sub-float/2addr v7, v8

    const/16 v5, 0x16

    aput v7, v3, v5

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v7, p21, v7

    div-float v7, v7, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v5

    div-float v8, v8, v16

    sub-float/2addr v7, v8

    const/16 v5, 0x17

    aput v7, v3, v5

    const/16 v5, 0x18

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    mul-float v7, v7, v29

    aput v7, v3, v5

    const/16 v5, 0x19

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    aput v7, v3, v5

    const/16 v5, 0x1a

    div-float v7, p11, v15

    aput v7, v3, v5

    const/16 v5, 0x1b

    div-float v7, p12, v16

    aput v7, v3, v5

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v7, v7, p20

    div-float/2addr v7, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v5

    div-float/2addr v8, v15

    sub-float/2addr v7, v8

    const/16 v5, 0x1c

    aput v7, v3, v5

    div-float v7, p21, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v5

    div-float v8, v8, v16

    add-float/2addr v7, v8

    const/16 v5, 0x1d

    aput v7, v3, v5

    const/16 v5, 0x1e

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    mul-float v7, v7, v29

    aput v7, v3, v5

    const/16 v5, 0x1f

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float v29, v29, v7

    aput v29, v3, v5

    const/16 v5, 0x20

    div-float v7, p11, v15

    aput v7, v3, v5

    const/16 v5, 0x21

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v7, p12, v7

    div-float v7, v7, v16

    aput v7, v3, v5

    div-float v7, p20, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v5

    div-float/2addr v8, v15

    add-float/2addr v7, v8

    const/16 v5, 0x22

    aput v7, v3, v5

    div-float v7, p21, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v5

    div-float v8, v8, v16

    add-float/2addr v7, v8

    const/16 v5, 0x23

    aput v7, v3, v5

    new-instance v5, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v5, v3}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    goto/16 :goto_0

    :cond_1
    if-eqz p8, :cond_2

    if-nez p17, :cond_2

    iput v6, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    move/from16 v5, p9

    iput v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    new-array v3, v3, [F

    const/4 v7, 0x0

    aput v7, v3, v28

    aput v7, v3, v27

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    div-float v7, v7, v30

    add-float v7, p11, v7

    div-float/2addr v7, v15

    aput v7, v3, v26

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    div-float v7, v7, v30

    add-float v7, p12, v7

    div-float v7, v7, v16

    aput v7, v3, v25

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    div-float v7, v7, v30

    add-float v7, p20, v7

    div-float/2addr v7, v15

    aput v7, v3, v24

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    div-float v7, v7, v30

    add-float v7, p21, v7

    div-float v7, v7, v16

    aput v7, v3, v23

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    mul-float v7, v7, v29

    aput v7, v3, v22

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float v7, v7, v29

    aput v7, v3, v21

    div-float v7, p11, v15

    aput v7, v3, v20

    const/16 v7, 0x9

    div-float v8, p12, v16

    aput v8, v3, v7

    div-float v8, p20, v15

    sub-float v19, v9, v1

    div-float v19, v19, v30

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float v19, v19, v7

    div-float v19, v19, v15

    add-float v8, v8, v19

    const/16 v7, 0xa

    aput v8, v3, v7

    iget v8, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v8, p21, v8

    div-float v8, v8, v16

    sub-float v19, v10, v2

    div-float v19, v19, v30

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float v19, v19, v7

    div-float v19, v19, v16

    sub-float v8, v8, v19

    const/16 v7, 0xb

    aput v8, v3, v7

    const/16 v7, 0xc

    iget v8, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v8, v8, v18

    aput v8, v3, v7

    const/16 v7, 0xd

    iget v8, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float v8, v8, v29

    aput v8, v3, v7

    const/16 v7, 0xe

    div-float v8, p11, v15

    aput v8, v3, v7

    const/16 v7, 0xf

    iget v8, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v8, p12, v8

    div-float v8, v8, v16

    aput v8, v3, v7

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v7, v7, p20

    div-float/2addr v7, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v4

    div-float/2addr v8, v15

    sub-float/2addr v7, v8

    aput v7, v3, v17

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v7, p21, v7

    div-float v7, v7, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v4

    div-float v8, v8, v16

    sub-float/2addr v7, v8

    const/16 v4, 0x11

    aput v7, v3, v4

    const/16 v4, 0x12

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    aput v7, v3, v4

    const/16 v4, 0x13

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float/2addr v7, v8

    aput v7, v3, v4

    const/16 v4, 0x14

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v7, v7, p11

    div-float/2addr v7, v15

    aput v7, v3, v4

    const/16 v4, 0x15

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v7, p12, v7

    div-float v7, v7, v16

    aput v7, v3, v4

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v7, v7, p20

    div-float/2addr v7, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v4

    div-float/2addr v8, v15

    sub-float/2addr v7, v8

    const/16 v4, 0x16

    aput v7, v3, v4

    div-float v7, p21, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v4

    div-float v8, v8, v16

    add-float/2addr v7, v8

    const/16 v4, 0x17

    aput v7, v3, v4

    const/16 v4, 0x18

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    mul-float v7, v7, v29

    aput v7, v3, v4

    const/16 v4, 0x19

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    aput v7, v3, v4

    const/16 v4, 0x1a

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v7, v7, p11

    div-float/2addr v7, v15

    aput v7, v3, v4

    const/16 v4, 0x1b

    div-float v7, p12, v16

    aput v7, v3, v4

    div-float v7, p20, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v4

    div-float/2addr v8, v15

    add-float/2addr v7, v8

    const/16 v4, 0x1c

    aput v7, v3, v4

    div-float v7, p21, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v4

    div-float v8, v8, v16

    add-float/2addr v7, v8

    const/16 v4, 0x1d

    aput v7, v3, v4

    const/16 v4, 0x1e

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    mul-float v7, v7, v29

    aput v7, v3, v4

    const/16 v4, 0x1f

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float v29, v29, v7

    aput v29, v3, v4

    const/16 v4, 0x20

    div-float v7, p11, v15

    aput v7, v3, v4

    const/16 v4, 0x21

    div-float v7, p12, v16

    aput v7, v3, v4

    div-float v7, p20, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v4

    div-float/2addr v8, v15

    add-float/2addr v7, v8

    const/16 v4, 0x22

    aput v7, v3, v4

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v7, p21, v7

    div-float v7, v7, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v4

    div-float v8, v8, v16

    sub-float/2addr v7, v8

    const/16 v4, 0x23

    aput v7, v3, v4

    new-instance v4, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v4, v3}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    goto/16 :goto_1

    :cond_2
    move/from16 v5, p9

    iput v6, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    iput v5, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    iput v12, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    iput v11, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v28

    aput v4, v3, v27

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    div-float v4, v4, v30

    add-float v4, p11, v4

    div-float/2addr v4, v15

    aput v4, v3, v26

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    div-float v4, v4, v30

    add-float v4, p12, v4

    div-float v4, v4, v16

    aput v4, v3, v25

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    div-float v4, v4, v30

    add-float v4, p20, v4

    div-float/2addr v4, v15

    aput v4, v3, v24

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    div-float v4, v4, v30

    add-float v4, p21, v4

    div-float v4, v4, v16

    aput v4, v3, v23

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    mul-float v4, v4, v29

    aput v4, v3, v22

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float v4, v4, v29

    aput v4, v3, v21

    div-float v4, p11, v15

    aput v4, v3, v20

    const/16 v4, 0x9

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v7, p12, v7

    div-float v7, v7, v16

    aput v7, v3, v4

    div-float v7, p20, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v4

    div-float/2addr v8, v15

    add-float/2addr v7, v8

    const/16 v4, 0xa

    aput v7, v3, v4

    div-float v7, p21, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v4

    div-float v8, v8, v16

    add-float/2addr v7, v8

    const/16 v4, 0xb

    aput v7, v3, v4

    const/16 v4, 0xc

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    aput v7, v3, v4

    const/16 v4, 0xd

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float v7, v7, v29

    aput v7, v3, v4

    const/16 v4, 0xe

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v7, v7, p11

    div-float/2addr v7, v15

    aput v7, v3, v4

    const/16 v4, 0xf

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v7, p12, v7

    div-float v7, v7, v16

    aput v7, v3, v4

    div-float v4, p20, v15

    sub-float v7, v9, v1

    div-float v7, v7, v30

    iget v8, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v7, v8

    div-float/2addr v7, v15

    add-float/2addr v4, v7

    aput v4, v3, v17

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v7, p21, v7

    div-float v7, v7, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v4

    div-float v8, v8, v16

    sub-float/2addr v7, v8

    const/16 v4, 0x11

    aput v7, v3, v4

    const/16 v4, 0x12

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    aput v7, v3, v4

    const/16 v4, 0x13

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float/2addr v7, v8

    aput v7, v3, v4

    const/16 v4, 0x14

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageW:F

    add-float v7, v7, p11

    div-float/2addr v7, v15

    aput v7, v3, v4

    const/16 v4, 0x15

    div-float v7, p12, v16

    aput v7, v3, v4

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v7, v7, p20

    div-float/2addr v7, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v4

    div-float/2addr v8, v15

    sub-float/2addr v7, v8

    const/16 v4, 0x16

    aput v7, v3, v4

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageHm:F

    add-float v7, p21, v7

    div-float v7, v7, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v4

    div-float v8, v8, v16

    sub-float/2addr v7, v8

    const/16 v4, 0x17

    aput v7, v3, v4

    const/16 v4, 0x18

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    mul-float v7, v7, v29

    aput v7, v3, v4

    const/16 v4, 0x19

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    aput v7, v3, v4

    const/16 v4, 0x1a

    div-float v7, p11, v15

    aput v7, v3, v4

    const/16 v4, 0x1b

    div-float v7, p12, v16

    aput v7, v3, v4

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageWm:F

    add-float v7, v7, p20

    div-float/2addr v7, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v4

    div-float/2addr v8, v15

    sub-float/2addr v7, v8

    const/16 v4, 0x1c

    aput v7, v3, v4

    div-float v7, p21, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v4

    div-float v8, v8, v16

    add-float/2addr v7, v8

    const/16 v4, 0x1d

    aput v7, v3, v4

    const/16 v4, 0x1e

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->wFix:F

    mul-float v7, v7, v29

    aput v7, v3, v4

    const/16 v4, 0x1f

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->hFix:F

    mul-float v29, v29, v7

    aput v29, v3, v4

    const/16 v4, 0x20

    div-float v7, p11, v15

    aput v7, v3, v4

    const/16 v4, 0x21

    iget v7, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageH:F

    add-float v7, p12, v7

    div-float v7, v7, v16

    aput v7, v3, v4

    div-float v7, p20, v15

    sub-float v8, v9, v1

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioW:F

    div-float/2addr v8, v4

    div-float/2addr v8, v15

    add-float/2addr v7, v8

    const/16 v4, 0x22

    aput v7, v3, v4

    div-float v7, p21, v16

    sub-float v8, v10, v2

    div-float v8, v8, v30

    iget v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->imageMapRatioH:F

    div-float/2addr v8, v4

    div-float v8, v8, v16

    add-float/2addr v7, v8

    const/16 v4, 0x23

    aput v7, v3, v4

    new-instance v4, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v4, v3}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v4, v0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    :goto_1
    return-void
.end method


# virtual methods
.method public changeSize(FF)V
    .locals 0

    return-void
.end method

.method public createProgram()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getResourceManager()Lcom/android/systemui/infinity/common/GLResourceManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->resourceId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/common/GLResourceManager;->loadTexture(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->textureId:I

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getResourceManager()Lcom/android/systemui/infinity/common/GLResourceManager;

    move-result-object v0

    const v1, 0x7f110019

    const v2, 0x7f110018

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/infinity/common/GLResourceManager;->loadProgram(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string/jumbo v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uTextureUnitLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string/jumbo v1, "u_Alpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uAlphaLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uMatrixLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aPositionLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aTextureCoordinatesLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string v1, "a_TextureCoordinatesMask"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aTextureCoordinatesLocationMask:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string/jumbo v1, "u_MaskMoveX"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uMaskMoveXLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    const-string/jumbo v1, "u_MaskMoveY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uMaskMoveYLocation:I

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aPositionLocation:I

    const/16 v2, 0x18

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aTextureCoordinatesLocation:I

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aTextureCoordinatesLocationMask:I

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    return-void
.end method

.method public destroyProgram()V
    .locals 0

    return-void
.end method

.method public draw([F)V
    .locals 13

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->textureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uTextureUnitLocation:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uAlphaLocation:I

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->alpha:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->tx:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->moveXValue:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->ty:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->moveYValue:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uMaskMoveXLocation:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uMaskMoveYLocation:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->beforeMoveX:F

    iput v2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->beforeMoveY:F

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aPositionLocation:I

    const/16 v5, 0x18

    const/4 v6, 0x2

    invoke-virtual {v3, v1, v4, v6, v5}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aTextureCoordinatesLocation:I

    invoke-virtual {v3, v6, v4, v6, v5}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    const/4 v4, 0x4

    iget v7, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->aTextureCoordinatesLocationMask:I

    invoke-virtual {v3, v4, v7, v6, v5}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewMatrix:[F

    invoke-static {v3, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewMatrix:[F

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->tx:F

    iget v5, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->ty:F

    neg-float v5, v5

    iget v6, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->tz:F

    invoke-static {v3, v1, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewMatrix:[F

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->sx:F

    iget v5, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->sy:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v4, v5, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v7, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewProjectionMatrix:[F

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewMatrix:[F

    const/4 v12, 0x0

    move-object v9, p1

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->uMatrixLocation:I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->viewProjectionMatrix:[F

    invoke-static {v3, v4, v1, v5, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v3, 0x6

    invoke-static {v3, v1, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->alpha:F

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->sx:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->sy:F

    return-void
.end method

.method public setTranslation(FFF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->tx:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->ty:F

    iput p3, p0, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;->tz:F

    return-void
.end method

.class public Lcom/android/systemui/infinity/background/LockTextureBackground;
.super Ljava/lang/Object;
.source "LockTextureBackground.java"


# static fields
.field private static final POSITION_COMPONENT_COUNT:I = 0x2

.field private static final STRIDE:I = 0x10

.field private static final TEXTURE_COORDINATES_COMPONENT_COUNT:I = 0x2


# instance fields
.field private final vertexArray:Lcom/android/systemui/infinity/common/VertexArray;


# direct methods
.method public constructor <init>(ZFFFFFF)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, -0x40800000    # -1.0f

    if-nez p1, :cond_0

    move/from16 v16, p2

    move/from16 v17, p3

    new-array v11, v11, [F

    aput v13, v11, v10

    aput v13, v11, v9

    div-float v9, v16, v12

    add-float v9, p4, v9

    div-float v9, v9, p6

    aput v9, v11, v8

    div-float v8, v17, v12

    add-float v8, p5, v8

    div-float v8, v8, p7

    aput v8, v11, v7

    aput v15, v11, v6

    aput v15, v11, v5

    div-float v5, p4, p6

    aput v5, v11, v4

    add-float v4, p5, v17

    div-float v4, v4, p7

    aput v4, v11, v3

    aput v14, v11, v2

    aput v15, v11, v1

    const/16 v1, 0xa

    add-float v2, v16, p4

    div-float v2, v2, p6

    aput v2, v11, v1

    const/16 v1, 0xb

    add-float v2, p5, v17

    div-float v2, v2, p7

    aput v2, v11, v1

    const/16 v1, 0xc

    aput v14, v11, v1

    const/16 v1, 0xd

    aput v14, v11, v1

    const/16 v1, 0xe

    add-float v2, v16, p4

    div-float v2, v2, p6

    aput v2, v11, v1

    const/16 v1, 0xf

    div-float v2, p5, p7

    aput v2, v11, v1

    const/16 v1, 0x10

    aput v15, v11, v1

    const/16 v1, 0x11

    aput v14, v11, v1

    const/16 v1, 0x12

    div-float v2, p4, p6

    aput v2, v11, v1

    const/16 v1, 0x13

    div-float v2, p5, p7

    aput v2, v11, v1

    const/16 v1, 0x14

    aput v15, v11, v1

    const/16 v1, 0x15

    aput v15, v11, v1

    const/16 v1, 0x16

    div-float v2, p4, p6

    aput v2, v11, v1

    const/16 v1, 0x17

    add-float v2, p5, v17

    div-float v2, v2, p7

    aput v2, v11, v1

    move-object v1, v11

    new-instance v2, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v2, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v2, v0, Lcom/android/systemui/infinity/background/LockTextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    goto/16 :goto_0

    :cond_0
    move/from16 v16, p3

    move/from16 v17, p2

    new-array v11, v11, [F

    aput v13, v11, v10

    aput v13, v11, v9

    div-float v9, v16, v12

    add-float v9, p4, v9

    div-float v9, v9, p6

    aput v9, v11, v8

    div-float v8, v17, v12

    add-float v8, p5, v8

    div-float v8, v8, p7

    aput v8, v11, v7

    aput v15, v11, v6

    aput v15, v11, v5

    div-float v5, p4, p6

    aput v5, v11, v4

    div-float v4, p5, p7

    aput v4, v11, v3

    aput v14, v11, v2

    aput v15, v11, v1

    const/16 v1, 0xa

    div-float v2, p4, p6

    aput v2, v11, v1

    const/16 v1, 0xb

    add-float v2, p5, v17

    div-float v2, v2, p7

    aput v2, v11, v1

    const/16 v1, 0xc

    aput v14, v11, v1

    const/16 v1, 0xd

    aput v14, v11, v1

    const/16 v1, 0xe

    add-float v2, v16, p4

    div-float v2, v2, p6

    aput v2, v11, v1

    const/16 v1, 0xf

    add-float v2, p5, v17

    div-float v2, v2, p7

    aput v2, v11, v1

    const/16 v1, 0x10

    aput v15, v11, v1

    const/16 v1, 0x11

    aput v14, v11, v1

    const/16 v1, 0x12

    add-float v2, v16, p4

    div-float v2, v2, p6

    aput v2, v11, v1

    const/16 v1, 0x13

    div-float v2, p5, p7

    aput v2, v11, v1

    const/16 v1, 0x14

    aput v15, v11, v1

    const/16 v1, 0x15

    aput v15, v11, v1

    const/16 v1, 0x16

    div-float v2, p4, p6

    aput v2, v11, v1

    const/16 v1, 0x17

    div-float v2, p5, p7

    aput v2, v11, v1

    move-object v1, v11

    new-instance v2, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v2, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v2, v0, Lcom/android/systemui/infinity/background/LockTextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    :goto_0
    return-void
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/infinity/common/TextureShaderProgram;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/infinity/background/LockTextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/common/TextureShaderProgram;->getPositionAttributeLocation()I

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/background/LockTextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/common/TextureShaderProgram;->getTextureCoordinatesAttributeLocation()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    return-void
.end method

.method public draw()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

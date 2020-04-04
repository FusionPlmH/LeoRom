.class public Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;
.super Ljava/lang/Object;
.source "TangramObjectMergedLayer.java"

# interfaces
.implements Lcom/android/systemui/infinity/tangram/TangramObjectInterface;


# static fields
.field protected static final A_POSITION:Ljava/lang/String; = "a_Position"

.field protected static final A_TEXTURE_COORDINATES:Ljava/lang/String; = "a_TextureCoordinates"

.field private static final POSITION_COMPONENT_COUNT:I = 0x2

.field private static final STRIDE:I = 0x10

.field private static final TEXTURE_COORDINATES_COMPONENT_COUNT:I = 0x2

.field private static final TOTAL_COMPONENT_COUNT:I = 0x4

.field protected static final U_ALPHA:Ljava/lang/String; = "u_Alpha"

.field protected static final U_MATRIX:Ljava/lang/String; = "u_Matrix"

.field protected static final U_TEXTURE_UNIT:Ljava/lang/String; = "u_TextureUnit"


# instance fields
.field private aPositionLocation:I

.field private aTextureCoordinatesLocation:I

.field alpha:F

.field context:Landroid/content/Context;

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

.field private uMatrixLocation:I

.field private uTextureUnitLocation:I

.field private final vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

.field private final viewMatrix:[F

.field private final viewProjectionMatrix:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;IFFFFZFFFFFF)V
    .locals 23

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    new-array v2, v1, [F

    iput-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewProjectionMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sx:F

    iput v2, v0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sy:F

    iput v2, v0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->alpha:F

    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->context:Landroid/content/Context;

    move/from16 v4, p3

    iput v4, v0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->resourceId:I

    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    div-float v6, p4, p6

    div-float v7, p5, p7

    move/from16 v8, p9

    move/from16 v9, p10

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v1, 0x18

    const/high16 v19, 0x40000000    # 2.0f

    const/16 v20, 0x0

    const/high16 v21, -0x40800000    # -1.0f

    if-nez p8, :cond_0

    new-array v1, v1, [F

    aput v20, v1, v18

    aput v20, v1, v17

    div-float v17, v8, v19

    add-float v17, p11, v17

    div-float v17, v17, p13

    aput v17, v1, v16

    div-float v16, v9, v19

    add-float v16, p12, v16

    div-float v16, v16, p14

    aput v16, v1, v15

    mul-float v15, v21, v6

    aput v15, v1, v14

    mul-float v14, v21, v7

    aput v14, v1, v13

    div-float v13, p11, p13

    aput v13, v1, v12

    add-float v12, p12, v9

    div-float v12, v12, p14

    aput v12, v1, v11

    mul-float v11, v2, v6

    aput v11, v1, v10

    const/16 v10, 0x9

    mul-float v11, v21, v7

    aput v11, v1, v10

    const/16 v10, 0xa

    add-float v11, v8, p11

    div-float v11, v11, p13

    aput v11, v1, v10

    const/16 v10, 0xb

    add-float v11, p12, v9

    div-float v11, v11, p14

    aput v11, v1, v10

    const/16 v10, 0xc

    mul-float v11, v2, v6

    aput v11, v1, v10

    const/16 v10, 0xd

    mul-float v11, v2, v7

    aput v11, v1, v10

    const/16 v10, 0xe

    add-float v11, v8, p11

    div-float v11, v11, p13

    aput v11, v1, v10

    const/16 v10, 0xf

    div-float v11, p12, p14

    aput v11, v1, v10

    mul-float v10, v21, v6

    const/16 v11, 0x10

    aput v10, v1, v11

    const/16 v10, 0x11

    mul-float/2addr v2, v7

    aput v2, v1, v10

    const/16 v2, 0x12

    div-float v10, p11, p13

    aput v10, v1, v2

    const/16 v2, 0x13

    div-float v10, p12, p14

    aput v10, v1, v2

    const/16 v2, 0x14

    mul-float v10, v21, v6

    aput v10, v1, v2

    const/16 v2, 0x15

    mul-float v21, v21, v7

    aput v21, v1, v2

    const/16 v2, 0x16

    div-float v10, p11, p13

    aput v10, v1, v2

    const/16 v2, 0x17

    add-float v10, p12, v9

    div-float v10, v10, p14

    aput v10, v1, v2

    new-instance v2, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v2, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    goto/16 :goto_0

    :cond_0
    move/from16 v8, p10

    move/from16 v9, p9

    new-array v1, v1, [F

    aput v20, v1, v18

    aput v20, v1, v17

    div-float v17, v8, v19

    add-float v17, p11, v17

    div-float v17, v17, p13

    aput v17, v1, v16

    div-float v16, v9, v19

    add-float v16, p12, v16

    div-float v16, v16, p14

    aput v16, v1, v15

    mul-float v15, v21, v6

    aput v15, v1, v14

    mul-float v14, v21, v7

    aput v14, v1, v13

    div-float v13, p11, p13

    aput v13, v1, v12

    div-float v12, p12, p14

    aput v12, v1, v11

    mul-float v11, v2, v6

    aput v11, v1, v10

    const/16 v10, 0x9

    mul-float v11, v21, v7

    aput v11, v1, v10

    const/16 v10, 0xa

    div-float v11, p11, p13

    aput v11, v1, v10

    const/16 v10, 0xb

    add-float v11, p12, v9

    div-float v11, v11, p14

    aput v11, v1, v10

    const/16 v10, 0xc

    mul-float v11, v2, v6

    aput v11, v1, v10

    const/16 v10, 0xd

    mul-float v11, v2, v7

    aput v11, v1, v10

    const/16 v10, 0xe

    add-float v11, v8, p11

    div-float v11, v11, p13

    aput v11, v1, v10

    const/16 v10, 0xf

    add-float v11, p12, v9

    div-float v11, v11, p14

    aput v11, v1, v10

    mul-float v10, v21, v6

    const/16 v11, 0x10

    aput v10, v1, v11

    const/16 v10, 0x11

    mul-float/2addr v2, v7

    aput v2, v1, v10

    const/16 v2, 0x12

    add-float v10, v8, p11

    div-float v10, v10, p13

    aput v10, v1, v2

    const/16 v2, 0x13

    div-float v10, p12, p14

    aput v10, v1, v2

    const/16 v2, 0x14

    mul-float v10, v21, v6

    aput v10, v1, v2

    const/16 v2, 0x15

    mul-float v21, v21, v7

    aput v21, v1, v2

    const/16 v2, 0x16

    div-float v10, p11, p13

    aput v10, v1, v2

    const/16 v2, 0x17

    div-float v10, p12, p14

    aput v10, v1, v2

    new-instance v2, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v2, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    :goto_0
    return-void
.end method


# virtual methods
.method public changeSize(FF)V
    .locals 0

    return-void
.end method

.method public createProgram()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getResourceManager()Lcom/android/systemui/infinity/common/GLResourceManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->resourceId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/common/GLResourceManager;->loadTexture(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->textureId:I

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getResourceManager()Lcom/android/systemui/infinity/common/GLResourceManager;

    move-result-object v0

    const v1, 0x7f110003

    const v2, 0x7f110002

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/infinity/common/GLResourceManager;->loadProgram(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    const-string/jumbo v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uTextureUnitLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    const-string/jumbo v1, "u_Alpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uAlphaLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uMatrixLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aPositionLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    const-string v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aTextureCoordinatesLocation:I

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aPositionLocation:I

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aTextureCoordinatesLocation:I

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    return-void
.end method

.method public destroyProgram()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->textureId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    iput v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->textureId:I

    return-void
.end method

.method public draw([F)V
    .locals 11

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->textureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uTextureUnitLocation:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uAlphaLocation:I

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->alpha:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aPositionLocation:I

    const/16 v3, 0x10

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aTextureCoordinatesLocation:I

    invoke-virtual {v0, v4, v2, v4, v3}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->tx:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->ty:F

    neg-float v3, v3

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->tz:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sx:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sy:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewProjectionMatrix:[F

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    const/4 v10, 0x0

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uMatrixLocation:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewProjectionMatrix:[F

    invoke-static {v0, v2, v1, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x6

    invoke-static {v0, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public draw([FI)V
    .locals 11

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uTextureUnitLocation:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uAlphaLocation:I

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->alpha:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aPositionLocation:I

    const/16 v3, 0x10

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->aTextureCoordinatesLocation:I

    invoke-virtual {v0, v4, v2, v4, v3}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->tx:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->ty:F

    neg-float v3, v3

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->tz:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sx:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sy:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewProjectionMatrix:[F

    iget-object v9, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewMatrix:[F

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->uMatrixLocation:I

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->viewProjectionMatrix:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x6

    invoke-static {v0, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->alpha:F

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sx:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->sy:F

    return-void
.end method

.method public setTranslation(FFF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->tx:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->ty:F

    iput p3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;->tz:F

    return-void
.end method

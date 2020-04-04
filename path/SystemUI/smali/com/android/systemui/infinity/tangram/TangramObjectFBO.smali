.class public Lcom/android/systemui/infinity/tangram/TangramObjectFBO;
.super Ljava/lang/Object;
.source "TangramObjectFBO.java"

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

.field beforeH:F

.field beforeW:F

.field colour_texture:[I

.field context:Landroid/content/Context;

.field fboH:I

.field public final fboViewProjectionMatrix:[F

.field fboW:I

.field frame_buffer:[I

.field plusScaleX:F

.field plusScaleY:F

.field private program:I

.field renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

.field sx:F

.field sy:F

.field private textureId:I

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
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;FFFF)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewMatrix:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewProjectionMatrix:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->fboViewProjectionMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->sx:F

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->sy:F

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->alpha:F

    const/4 v2, 0x1

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->frame_buffer:[I

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->colour_texture:[I

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->plusScaleX:F

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->plusScaleY:F

    iput-object p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    div-float v3, p3, p5

    div-float v4, p4, p6

    iput p3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->beforeW:F

    iput p4, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->beforeH:F

    const/16 v5, 0x18

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v5, v7

    aput v6, v5, v2

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v7, 0x2

    aput v2, v5, v7

    const/4 v7, 0x3

    aput v2, v5, v7

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v7, v2, v3

    const/4 v8, 0x4

    aput v7, v5, v8

    mul-float v7, v2, v4

    const/4 v8, 0x5

    aput v7, v5, v8

    const/4 v7, 0x6

    aput v6, v5, v7

    const/4 v7, 0x7

    aput v1, v5, v7

    mul-float v7, v1, v3

    const/16 v8, 0x8

    aput v7, v5, v8

    mul-float v7, v2, v4

    const/16 v8, 0x9

    aput v7, v5, v8

    const/16 v7, 0xa

    aput v1, v5, v7

    const/16 v7, 0xb

    aput v1, v5, v7

    mul-float v7, v1, v3

    const/16 v8, 0xc

    aput v7, v5, v8

    mul-float v7, v1, v4

    const/16 v8, 0xd

    aput v7, v5, v8

    const/16 v7, 0xe

    aput v1, v5, v7

    const/16 v7, 0xf

    aput v6, v5, v7

    mul-float v7, v2, v3

    aput v7, v5, v0

    mul-float v0, v1, v4

    const/16 v7, 0x11

    aput v0, v5, v7

    const/16 v0, 0x12

    aput v6, v5, v0

    const/16 v0, 0x13

    aput v6, v5, v0

    mul-float v0, v2, v3

    const/16 v7, 0x14

    aput v0, v5, v7

    mul-float/2addr v2, v4

    const/16 v0, 0x15

    aput v2, v5, v0

    const/16 v0, 0x16

    aput v6, v5, v0

    const/16 v0, 0x17

    aput v1, v5, v0

    move-object v0, v5

    new-instance v1, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v1, v0}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    return-void
.end method


# virtual methods
.method public changeSize(FF)V
    .locals 0

    return-void
.end method

.method createFrameBuffer(II)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    iput v10, v0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->fboW:I

    iput v11, v0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->fboH:I

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->fboViewProjectionMatrix:[F

    int-to-float v2, v10

    int-to-float v3, v11

    div-float/2addr v2, v3

    const/high16 v3, 0x42340000    # 45.0f

    const v4, 0x409ccccd    # 4.9f

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v1, v3, v2, v4, v5}, Lcom/android/systemui/infinity/common/MatrixHelper;->perspectiveM([FFFFF)V

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->frame_buffer:[I

    const/4 v2, 0x1

    const/4 v12, 0x0

    invoke-static {v2, v1, v12}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->colour_texture:[I

    invoke-static {v2, v1, v12}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->colour_texture:[I

    aget v1, v1, v12

    const/16 v13, 0xde1

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move v4, v10

    move v5, v11

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v14, 0x2801

    const/16 v15, 0x2601

    invoke-static {v13, v14, v15}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v9, 0x2800

    invoke-static {v13, v9, v15}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v13, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x1902

    const/16 v7, 0x1902

    const/16 v8, 0x1403

    const/16 v16, 0x0

    move v12, v9

    move-object/from16 v9, v16

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v13, v14, v15}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v13, v12, v15}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 v1, 0x0

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->frame_buffer:[I

    aget v2, v2, v1

    const v3, 0x8d40

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->colour_texture:[I

    aget v2, v2, v1

    const v4, 0x8ce0

    invoke-static {v3, v4, v13, v2, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v2

    const v3, 0x8cd5

    if-ne v2, v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->frame_buffer:[I

    aget v1, v3, v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public createProgram()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getResourceManager()Lcom/android/systemui/infinity/common/GLResourceManager;

    move-result-object v0

    const v1, 0x7f110003

    const v2, 0x7f110002

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/infinity/common/GLResourceManager;->loadProgram(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    const-string/jumbo v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->uTextureUnitLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    const-string/jumbo v1, "u_Alpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->uAlphaLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->uMatrixLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->aPositionLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    const-string v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->aTextureCoordinatesLocation:I

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->aPositionLocation:I

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->aTextureCoordinatesLocation:I

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    return-void
.end method

.method public destroyProgram()V
    .locals 0

    return-void
.end method

.method public draw([F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->textureId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->draw([FI)V

    return-void
.end method

.method public draw([FI)V
    .locals 11

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->uTextureUnitLocation:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->uAlphaLocation:I

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->alpha:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->aPositionLocation:I

    const/16 v3, 0x10

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->aTextureCoordinatesLocation:I

    invoke-virtual {v0, v4, v2, v4, v3}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewMatrix:[F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->tx:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->ty:F

    iget v4, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->tz:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewMatrix:[F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->plusScaleX:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->plusScaleY:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v5, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewProjectionMatrix:[F

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewMatrix:[F

    const/4 v10, 0x0

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->uMatrixLocation:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->viewProjectionMatrix:[F

    invoke-static {v0, v2, v1, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x6

    invoke-static {v0, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public getFboH()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->fboH:I

    return v0
.end method

.method public getFboW()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->fboW:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->alpha:F

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->sx:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->sy:F

    return-void
.end method

.method public setTextureId(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->textureId:I

    return-void
.end method

.method public setTranslation(FFF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->tx:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->ty:F

    iput p3, p0, Lcom/android/systemui/infinity/tangram/TangramObjectFBO;->tz:F

    return-void
.end method

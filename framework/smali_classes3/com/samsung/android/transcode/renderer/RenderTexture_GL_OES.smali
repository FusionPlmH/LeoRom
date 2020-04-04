.class public Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;
.super Ljava/lang/Object;
.source "RenderTexture_GL_OES.java"


# static fields
.field private static final A_POSITION:Ljava/lang/String; = "a_Position"

.field private static final A_TEXTURE_COORDINATES:Ljava/lang/String; = "a_TextureCoordinates"

.field private static final BLUR_FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TextureCoord;\nuniform samplerExternalOES u_TextureUnit;\nuniform float fWidth;\nuniform float fHeight;\nvoid main()\t\t\t\t\t\t\t\t\t\t \n        {\n  vec4 lightColor; \t\t\t\t\t\t\t\t \n\thighp vec4 color = vec4(0,0,0,1);\t\t\n\thighp vec2 gaussFilter[7];\t\t\t\t\n\t gaussFilter[0] = vec2(-3.0, 0.1063);\t \n\t gaussFilter[1] = vec2(-2.0, 0.1403);\t \n\t gaussFilter[2] = vec2(-1.0, 0.1658);\t \n\t gaussFilter[3] = vec2(0.0, 0.1752); \n\t gaussFilter[4] = vec2(1.0, 0.1658);\t\n\t gaussFilter[5] = vec2(2.0, 0.1403);\t\n\t gaussFilter[6] = vec2(3.0, 0.1063);\t\n\t\t\t\t\t\t\t\t\t\t\t\t\t\n\tfor( int i = 0; i < 7; i++ )\t\t\n\t\tcolor += texture2D(u_TextureUnit, vec2( v_TextureCoord.x+gaussFilter[i].x*fWidth, v_TextureCoord.y+gaussFilter[i].x*fHeight))*gaussFilter[i].y;\t\t\n  gl_FragColor = color ;\t\n}\n"

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field public static final PREPARE_FAILURE:I = 0x0

.field public static final PREPARE_SUCCESS:I = 0x1

.field private static final TEXTURE_FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TextureCoord;\nuniform samplerExternalOES u_TextureUnit;\nvoid main() {\n  gl_FragColor = texture2D(u_TextureUnit, v_TextureCoord);\n}\n"

.field private static final TEXTURE_VERTEX_SHADER_CODE:Ljava/lang/String; = "uniform mat4 u_MVPMatrix;\nuniform mat4 u_STMatrix;\nattribute vec4 a_Position;\nattribute vec4 a_TextureCoordinates;\nvarying vec2 v_TextureCoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_Position;\n  v_TextureCoord = (u_STMatrix * a_TextureCoordinates).xy;\n}\n"

.field private static final U_FRMAE_HEIGHT:Ljava/lang/String; = "fHegiht"

.field private static final U_FRMAE_WIDTH:Ljava/lang/String; = "fWidth"

.field private static final U_MVPMATRIX:Ljava/lang/String; = "u_MVPMatrix"

.field private static final U_STMATRIX:Ljava/lang/String; = "u_STMatrix"

.field private static final U_TEXTURE_UNIT:Ljava/lang/String; = "u_TextureUnit"

.field private static final VERTICES_DATA_POS_COUNT:I = 0x2

.field private static final VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final VERTICES_DATA_STRIDE_BYTES:I = 0x10

.field private static final VERTICES_DATA_TEX_COORD_COUNT:I = 0x2

.field private static final VERTICES_DATA_TEX_COORD_OFFSET:I = 0x2


# instance fields
.field private mHeight:F

.field private mMMSMode:Z

.field private final mMVPMatrix:[F

.field private mProgram:I

.field private final mSTMatrix:[F

.field private mTextureId:I

.field private final mVerticesData:[F

.field private mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

.field private mWidth:F

.field private ma_PositionHandle:I

.field private ma_TextureCoordinatesHandle:I

.field private mu_FheightHandle:I

.field private mu_FwidthHandle:I

.field private mu_MVPMatrixHandle:I

.field private mu_STMatrixHandle:I

.field private mu_TextureUnitHandle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesData:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMVPMatrix:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mSTMatrix:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    iget-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesData:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private deleteTexture()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    invoke-static {v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->deleteTexture(I)V

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mSTMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_MVPMatrixHandle:I

    iget-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMVPMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_STMatrixHandle:I

    iget-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mSTMatrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_TextureUnitHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-boolean v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FwidthHandle:I

    iget v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mWidth:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FheightHandle:I

    iget v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mHeight:F

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_PositionHandle:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x10

    iget-object v9, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_PositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray ma_PositionHandle"

    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_TextureCoordinatesHandle:I

    iget-object v9, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_TextureCoordinatesHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "glEnableVertexAttribArray ma_TextureCoordinatesHandle"

    invoke-static {v0}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "TranscodeLib"

    const-string v1, "Calling glFinish blocking call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    const-string v0, "TranscodeLib"

    const-string v1, "Finished glFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getTextureId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    return v0
.end method

.method public loadTexture(I)I
    .locals 8

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->deleteTexture()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/transcode/util/OpenGlHelper;->loadTextureOES()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    if-nez v0, :cond_1

    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "not able to load new texture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMVPMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMVPMatrix:[F

    const/4 v3, 0x0

    int-to-float v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mTextureId:I

    return v0
.end method

.method public prepare(I)I
    .locals 2

    const-string/jumbo v0, "uniform mat4 u_MVPMatrix;\nuniform mat4 u_STMatrix;\nattribute vec4 a_Position;\nattribute vec4 a_TextureCoordinates;\nvarying vec2 v_TextureCoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_Position;\n  v_TextureCoord = (u_STMatrix * a_TextureCoordinates).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TextureCoord;\nuniform samplerExternalOES u_TextureUnit;\nvoid main() {\n  gl_FragColor = texture2D(u_TextureUnit, v_TextureCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string/jumbo v1, "u_MVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_MVPMatrixHandle:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string/jumbo v1, "u_STMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_STMatrixHandle:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_PositionHandle:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_TextureCoordinatesHandle:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string/jumbo v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_TextureUnitHandle:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->loadTexture(I)I

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 v0, 0x1

    return v0
.end method

.method public prepare(IIIIIIIZII)I
    .locals 2

    iput-boolean p8, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    iget-boolean v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "uniform mat4 u_MVPMatrix;\nuniform mat4 u_STMatrix;\nattribute vec4 a_Position;\nattribute vec4 a_TextureCoordinates;\nvarying vec2 v_TextureCoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_Position;\n  v_TextureCoord = (u_STMatrix * a_TextureCoordinates).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TextureCoord;\nuniform samplerExternalOES u_TextureUnit;\nuniform float fWidth;\nuniform float fHeight;\nvoid main()\t\t\t\t\t\t\t\t\t\t \n        {\n  vec4 lightColor; \t\t\t\t\t\t\t\t \n\thighp vec4 color = vec4(0,0,0,1);\t\t\n\thighp vec2 gaussFilter[7];\t\t\t\t\n\t gaussFilter[0] = vec2(-3.0, 0.1063);\t \n\t gaussFilter[1] = vec2(-2.0, 0.1403);\t \n\t gaussFilter[2] = vec2(-1.0, 0.1658);\t \n\t gaussFilter[3] = vec2(0.0, 0.1752); \n\t gaussFilter[4] = vec2(1.0, 0.1658);\t\n\t gaussFilter[5] = vec2(2.0, 0.1403);\t\n\t gaussFilter[6] = vec2(3.0, 0.1063);\t\n\t\t\t\t\t\t\t\t\t\t\t\t\t\n\tfor( int i = 0; i < 7; i++ )\t\t\n\t\tcolor += texture2D(u_TextureUnit, vec2( v_TextureCoord.x+gaussFilter[i].x*fWidth, v_TextureCoord.y+gaussFilter[i].x*fHeight))*gaussFilter[i].y;\t\t\n  gl_FragColor = color ;\t\n}\n"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "uniform mat4 u_MVPMatrix;\nuniform mat4 u_STMatrix;\nattribute vec4 a_Position;\nattribute vec4 a_TextureCoordinates;\nvarying vec2 v_TextureCoord;\nvoid main() {\n  gl_Position = u_MVPMatrix * a_Position;\n  v_TextureCoord = (u_STMatrix * a_TextureCoordinates).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 v_TextureCoord;\nuniform samplerExternalOES u_TextureUnit;\nvoid main() {\n  gl_FragColor = texture2D(u_TextureUnit, v_TextureCoord);\n}\n"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    :goto_0
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string/jumbo v1, "u_MVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_MVPMatrixHandle:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string/jumbo v1, "u_STMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_STMatrixHandle:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_PositionHandle:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_TextureCoordinatesHandle:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string/jumbo v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_TextureUnitHandle:I

    iget-boolean v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string v1, "fWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FwidthHandle:I

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    const-string v1, "fHegiht"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FheightHandle:I

    int-to-float v0, p6

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mWidth:F

    int-to-float v0, p7

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mHeight:F

    if-eqz p9, :cond_2

    if-eqz p10, :cond_2

    int-to-float v0, p9

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mWidth:F

    int-to-float v0, p10

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mHeight:F

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->loadTexture(I)I

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static {p2, p3, p4, p5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->deleteTexture()V

    iget v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mProgram:I

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_MVPMatrixHandle:I

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_STMatrixHandle:I

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_PositionHandle:I

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->ma_TextureCoordinatesHandle:I

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_TextureUnitHandle:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mVerticesFloatBuffer:Ljava/nio/FloatBuffer;

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FwidthHandle:I

    iput v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mu_FheightHandle:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->mMMSMode:Z

    return-void
.end method

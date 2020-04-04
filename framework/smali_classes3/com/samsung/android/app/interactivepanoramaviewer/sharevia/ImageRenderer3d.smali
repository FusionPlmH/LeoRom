.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;
.super Ljava/lang/Object;
.source "ImageRenderer3d.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static final IDENTITY_MATRIX:[F

.field private static final LANDSCAPE_MODE:I = 0x0

.field private static final PORTRAIT_MODE:I = 0x1

.field private static final REVERSE_LANDSCAPE_MODE:I = 0x2

.field private static final REVERSE_PORTRAIT_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GL_Viewer3D"

.field private static prevmode:I


# instance fields
.field private Capture:I

.field private CaptureHandle:I

.field private CropH:I

.field private CropW:I

.field private ImgH:I

.field private ImgW:I

.field private PMatHandle:I

.field private PerspMatrix:[F

.field private ScreenH:I

.field private ScreenW:I

.field private TLx:I

.field private TLy:I

.field private TexCordHandle:I

.field private TextureBuffer:Ljava/nio/FloatBuffer;

.field TextureData:[F

.field private TextureHandle:[I

.field private final VertexBuffer:Ljava/nio/FloatBuffer;

.field private anglehandle:I

.field anglerot:F

.field private fragmentShader:I

.field private fragmentShaderCodeTriangle:Ljava/lang/String;

.field private grid_num:I

.field imageset:Z

.field isOffscreen:Z

.field private isRunningInTestMode:Z

.field private multiplierhandle:I

.field onCreatecalled:Z

.field private positionHandle:I

.field private shaderProgram:I

.field private sizeHandle:I

.field private sizearray:[F

.field private uvBuffer:Ljava/nio/ByteBuffer;

.field private uvhandle:I

.field vertexData:[F

.field private vertexShader:I

.field private vertexShaderCodeTriangle:Ljava/lang/String;

.field private viewportHandle:I

.field private yBuffer:Ljava/nio/ByteBuffer;

.field private yhandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    nop

    nop

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->IDENTITY_MATRIX:[F

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIIIIIIIIIZZ)V
    .locals 23

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x0

    iput v13, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    const/16 v0, 0xa

    iput v0, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    const/4 v0, 0x0

    iput v0, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglerot:F

    iput-boolean v13, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->imageset:Z

    iput-boolean v13, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isRunningInTestMode:Z

    iput-boolean v13, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onCreatecalled:Z

    const-string v0, "GL_Viewer3D"

    const-string v1, "Inside constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v14, p12

    iput-boolean v14, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isOffscreen:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v15, 0x1

    if-nez v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "/fragmentshadernv12.glsl"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    invoke-direct {v8, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->readFile(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShaderCodeTriangle:Ljava/lang/String;

    nop

    :cond_0
    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_1
    if-ne v11, v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "/fragmentshadernv12.glsl"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    invoke-direct {v8, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->readFile(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShaderCodeTriangle:Ljava/lang/String;

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "/vertexshader3d.glsl"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v0

    invoke-direct {v8, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->readFile(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShaderCodeTriangle:Ljava/lang/String;

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    iget v0, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    const/16 v1, 0xc

    mul-int/2addr v0, v1

    iget v2, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/2addr v0, v2

    new-array v0, v0, [F

    iput-object v0, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexData:[F

    iget v0, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/2addr v1, v0

    iget v0, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/2addr v1, v0

    new-array v0, v1, [F

    iput-object v0, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    iget-object v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->IDENTITY_MATRIX:[F

    iget-object v3, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    array-length v3, v3

    invoke-static {v1, v13, v2, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v0, [F

    iput-object v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    iget-object v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    int-to-float v2, v9

    aput v2, v1, v13

    iget-object v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    int-to-float v2, v10

    aput v2, v1, v15

    move/from16 v4, p9

    iput v4, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    move/from16 v3, p8

    iput v3, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    const-string v1, "GL_Viewer3D"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v15, "Inside constructor  H = "

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " W = "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GL_Viewer3D"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v15, "Inside constructor after swap  H = "

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " W = "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v12, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    iget-object v2, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexData:[F

    const/high16 v15, -0x40800000    # -1.0f

    const/high16 v17, -0x40800000    # -1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    move/from16 v20, v1

    move-object v1, v8

    move v3, v15

    move/from16 v4, v17

    move-object v15, v5

    move/from16 v5, v18

    move-object/from16 v17, v6

    move/from16 v6, v19

    move-object/from16 v18, v7

    move/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->calVertices([FFFFFI)I

    move-result v7

    mul-int/lit8 v1, v7, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->VertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->VertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexData:[F

    invoke-virtual {v1, v2, v13, v7}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->VertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iput v9, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iput v10, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    move/from16 v6, p4

    iput v6, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    move/from16 v5, p5

    iput v5, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    move/from16 v4, p6

    iput v4, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    move/from16 v3, p7

    iput v3, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    const-string v1, "GL_Viewer3D"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v13, " W = "

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " H = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " TLx = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " TLy = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " CropW = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " CropH = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " screen W = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " screen H = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    if-eqz p13, :cond_8

    if-eqz v12, :cond_7

    if-ne v12, v0, :cond_4

    move v0, v7

    goto :goto_7

    :cond_4
    const/4 v1, 0x1

    if-eq v12, v1, :cond_6

    const/4 v1, 0x3

    if-ne v12, v1, :cond_5

    goto :goto_6

    :cond_5
    move v0, v7

    goto/16 :goto_8

    :cond_6
    :goto_6
    iget-object v2, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    int-to-float v1, v1

    iget v0, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v0, v0

    div-float v0, v1, v0

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    int-to-float v1, v1

    iget v3, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v3, v3

    div-float v16, v1, v3

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    iget v3, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v3, v3

    div-float v20, v1, v3

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    iget v3, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v3, v3

    div-float v22, v1, v3

    iget v3, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    move-object v1, v8

    move/from16 v21, v3

    move v3, v0

    move/from16 v4, v16

    move/from16 v5, v20

    move/from16 v6, v22

    move v0, v7

    move/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->calVertices([FFFFFI)I

    move-result v13

    goto :goto_8

    :cond_7
    move v0, v7

    :goto_7
    iget-object v2, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    iget v3, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v3, v3

    div-float v3, v1, v3

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    iget v4, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v4, v4

    div-float v4, v1, v4

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    int-to-float v1, v1

    iget v5, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v5, v5

    div-float v5, v1, v5

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    int-to-float v1, v1

    iget v6, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v6, v6

    div-float v6, v1, v6

    iget v7, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->calVertices([FFFFFI)I

    move-result v13

    goto :goto_8

    :cond_8
    move v0, v7

    iget-object v2, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    int-to-float v1, v1

    iget v3, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v3, v3

    div-float v3, v1, v3

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    iget v4, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v4, v4

    div-float v4, v1, v4

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    iget v5, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v5, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v5, v5

    div-float v5, v1, v5

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    int-to-float v1, v1

    iget v6, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v6, v6

    div-float v6, v1, v6

    iget v7, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->calVertices([FFFFFI)I

    move-result v13

    :goto_8
    mul-int/lit8 v1, v13, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v13}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v2, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    iget v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v2, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private calVertices([FFFFFI)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    sub-float v3, p4, p2

    int-to-float v4, p6

    div-float/2addr v3, v4

    sub-float v4, p5, p3

    int-to-float v5, p6

    div-float/2addr v4, v5

    move v5, p2

    move v6, p3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p6, :cond_0

    return v2

    :cond_0
    add-float/2addr v6, v4

    const/4 v1, 0x0

    :goto_1
    if-lt v1, p6, :cond_1

    move v5, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-float/2addr v5, v3

    add-int/lit8 v7, v2, 0x1

    sub-float v8, v5, v3

    aput v8, p1, v2

    add-int/lit8 v2, v7, 0x1

    aput v6, p1, v7

    add-int/lit8 v7, v2, 0x1

    sub-float v8, v5, v3

    aput v8, p1, v2

    add-int/lit8 v2, v7, 0x1

    sub-float v8, v6, v4

    aput v8, p1, v7

    add-int/lit8 v7, v2, 0x1

    aput v5, p1, v2

    add-int/lit8 v2, v7, 0x1

    sub-float v8, v6, v4

    aput v8, p1, v7

    add-int/lit8 v7, v2, 0x1

    sub-float v8, v5, v3

    aput v8, p1, v2

    add-int/lit8 v2, v7, 0x1

    aput v6, p1, v7

    add-int/lit8 v7, v2, 0x1

    aput v5, p1, v2

    add-int/lit8 v2, v7, 0x1

    sub-float v8, v6, v4

    aput v8, p1, v7

    add-int/lit8 v7, v2, 0x1

    aput v5, p1, v2

    add-int/lit8 v2, v7, 0x1

    aput v6, p1, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private compileShader(Ljava/lang/String;I)I
    .locals 4

    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x8b81

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v1, v3

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    return v0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error creating shader."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createShaderProgram(II)I
    .locals 4

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string/jumbo v1, "vPos"

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v3, 0x8b82

    invoke-static {v0, v3, v1, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v1, v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    return v0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error creating shader program."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readFile(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    nop

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method Init_loadToGPU()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "GL_Viewer3D"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inside InitLoadToGPU W = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " H = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    aget v1, v1, v2

    const/16 v4, 0xde1

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v5, 0x2601

    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v6, 0x2800

    invoke-static {v4, v6, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    nop

    iget v10, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v11, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    iget-object v15, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1909

    const/4 v12, 0x0

    const/16 v13, 0x1909

    const/16 v14, 0x1401

    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v7, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yhandle:I

    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    const/4 v7, 0x1

    aget v2, v2, v7

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v4, v6, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    nop

    iget v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    div-int/lit8 v11, v1, 0x2

    iget v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    div-int/lit8 v12, v1, 0x2

    iget-object v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/16 v10, 0x190a

    const/4 v13, 0x0

    const/16 v14, 0x190a

    const/16 v15, 0x1401

    move-object/from16 v16, v1

    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvhandle:I

    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public isRunningInTestMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isRunningInTestMode:Z

    return v0
.end method

.method loadToGPU()V
    .locals 12

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    nop

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    iget-object v11, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1909

    const/4 v8, 0x0

    const/16 v9, 0x1909

    const/16 v10, 0x1401

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yhandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    nop

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    div-int/lit8 v5, v0, 0x2

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    div-int/lit8 v6, v0, 0x2

    iget-object v10, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/16 v4, 0x190a

    const/4 v7, 0x0

    const/16 v8, 0x190a

    const/16 v9, 0x1401

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvhandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----------skkv"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->loadToGPU()V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PMatHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->imageset:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x2

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "GL_Viewer3D"

    const-string v4, "Inside surface changed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    :goto_1
    int-to-float v4, v4

    iget v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v6, v5, :cond_2

    goto :goto_2

    :cond_2
    iget v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    goto :goto_3

    :cond_3
    :goto_2
    iget v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    :goto_3
    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v7, v4

    int-to-float v8, v2

    div-float/2addr v8, v6

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    int-to-float v7, v1

    div-float/2addr v7, v4

    goto :goto_4

    :cond_4
    int-to-float v7, v2

    div-float/2addr v7, v6

    :goto_4
    iget v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->viewportHandle:I

    int-to-float v9, v1

    div-float/2addr v9, v7

    div-float v9, v4, v9

    int-to-float v10, v2

    div-float/2addr v10, v7

    div-float v10, v6, v10

    invoke-static {v8, v9, v10}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const-string/jumbo v8, "skkv"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ">>>>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " <<>>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "skkv"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "-->"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v10, v1

    div-float/2addr v10, v7

    div-float/2addr v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v10, v2

    div-float/2addr v10, v7

    div-float/2addr v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "skkv"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "---->"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    aget v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "screen width"

    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "screen height"

    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "crop width"

    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "crop height"

    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onCreatecalled:Z

    if-eqz v8, :cond_6

    if-le v2, v1, :cond_5

    sput v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    goto :goto_5

    :cond_5
    sput v11, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    :goto_5
    iput-boolean v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onCreatecalled:Z

    :cond_6
    if-le v1, v2, :cond_7

    move v3, v11

    nop

    :cond_7
    sget v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    if-eq v8, v3, :cond_8

    iget v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    iput v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    iput v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    goto :goto_6

    :cond_8
    const-string/jumbo v8, "mode"

    const-string v9, "equal"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-boolean v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isRunningInTestMode:Z

    if-eqz v8, :cond_9

    iput v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    iput v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    const/16 v8, 0x500

    iput v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    const/16 v8, 0x2d0

    iput v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    :cond_9
    const-string/jumbo v8, "view width"

    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "view height"

    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isOffscreen:Z

    if-eqz v8, :cond_a

    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_7

    :cond_a
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_7
    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->multiplierhandle:I

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    sput v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x3

    const/high16 v12, -0x3d4c0000    # -90.0f

    const/high16 v13, 0x43340000    # 180.0f

    const/4 v14, 0x0

    if-le v1, v2, :cond_e

    iget v15, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-nez v15, :cond_b

    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    invoke-static {v5, v14}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v5, "onSurfaceChanged"

    const-string v9, "1"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_b
    iget v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v14, v5, :cond_c

    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    invoke-static {v5, v13}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v5, "onSurfaceChanged"

    const-string v9, "2"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_c
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v5, v11, :cond_d

    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    invoke-static {v5, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v5, "onSurfaceChanged"

    const-string v9, "3"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_d
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v5, v10, :cond_12

    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v5, "onSurfaceChanged"

    const-string v9, "4"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_e
    iget v15, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-nez v15, :cond_f

    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    invoke-static {v5, v14}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v5, "onSurfaceChanged"

    const-string v9, "5"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    iget v14, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v14, v5, :cond_10

    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    invoke-static {v5, v13}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v5, "onSurfaceChanged"

    const-string v9, "6"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_10
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v5, v11, :cond_11

    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    invoke-static {v5, v12}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v5, "onSurfaceChanged"

    const-string v9, "7"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_11
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v5, v10, :cond_12

    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v5, "onSurfaceChanged"

    const-string v9, "8"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Init_loadToGPU()V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onCreatecalled:Z

    const-string v1, "GL_Viewer3D"

    const-string v2, "Inside surface created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShader:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShader:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShaderCodeTriangle:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShaderCodeTriangle:Ljava/lang/String;

    const v5, 0x8b31

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->compileShader(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShader:I

    const v5, 0x8b30

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->compileShader(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShader:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShader:I

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShader:I

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->createShaderProgram(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string v6, "a_position"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->positionHandle:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string v6, "a_texCoord"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TexCordHandle:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v6, "s_PMatrix"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PMatHandle:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v6, "y_texture"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yhandle:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v6, "uv_texture"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvhandle:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v6, "size"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizeHandle:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v6, "viewportSize"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->viewportHandle:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string v6, "captureFlag"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CaptureHandle:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string v6, "anglerot"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v6, "multiplier"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->multiplierhandle:I

    const/16 v5, 0xb71

    invoke-static {v5}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v2, v2, v2, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->positionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->positionHandle:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->VertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TexCordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TexCordHandle:I

    iget-object v10, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizeHandle:I

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    const/4 v5, 0x0

    invoke-static {v1, v0, v2, v5}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    return-void
.end method

.method public setImage([B)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "GL_Viewer3D"

    const-string v1, "Inside setImage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->imageset:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setImage([B[F)V
    .locals 5

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v0, "GL_Viewer3D"

    const-string v1, "Inside setImage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->imageset:Z

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    const-string v0, "GL_Viewer3D"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In SetImage: YUVimg or Pmat is NULL"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRunningInTestMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isRunningInTestMode:Z

    return-void
.end method

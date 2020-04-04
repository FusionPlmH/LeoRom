.class public Lcom/android/systemui/infinity/background/TextureBackground;
.super Ljava/lang/Object;
.source "TextureBackground.java"


# static fields
.field private static final POSITION_COMPONENT_COUNT:I = 0x2

.field private static final STRIDE:I = 0x10

.field private static final TEXTURE_COORDINATES_COMPONENT_COUNT:I = 0x2

.field private static final VERTEX_DATA_L:[F

.field private static final VERTEX_DATA_P:[F

.field static imageH:F

.field static imageW:F

.field static mapH:F

.field static mapW:F

.field static x:F

.field static y:F


# instance fields
.field private final vertexArray:Lcom/android/systemui/infinity/common/VertexArray;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/high16 v0, 0x44870000    # 1080.0f

    sput v0, Lcom/android/systemui/infinity/background/TextureBackground;->imageW:F

    const v0, 0x450ac000    # 2220.0f

    sput v0, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    const v1, 0x44e08000    # 1796.0f

    sput v1, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    const v1, 0x4576c000    # 3948.0f

    sput v1, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    const v1, 0x457b1000    # 4017.0f

    sput v1, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    const/16 v1, 0x18

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v5, 0x1

    aput v4, v2, v5

    sget v6, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v7, Lcom/android/systemui/infinity/background/TextureBackground;->imageW:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    sget v7, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v6, v7

    const/4 v7, 0x2

    aput v6, v2, v7

    sget v6, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v9, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    div-float/2addr v9, v8

    add-float/2addr v6, v9

    sget v9, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v6, v9

    const/4 v9, 0x3

    aput v6, v2, v9

    const/4 v6, 0x4

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, v2, v6

    const/4 v11, 0x5

    aput v10, v2, v11

    sget v12, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v13, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v12, v13

    const/4 v13, 0x6

    aput v12, v2, v13

    sget v12, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v14, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    add-float/2addr v12, v14

    sget v14, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v12, v14

    const/4 v14, 0x7

    aput v12, v2, v14

    const/16 v12, 0x8

    aput v0, v2, v12

    const/16 v15, 0x9

    aput v10, v2, v15

    sget v16, Lcom/android/systemui/infinity/background/TextureBackground;->imageW:F

    sget v17, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    add-float v16, v16, v17

    sget v17, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float v16, v16, v17

    const/16 v17, 0xa

    aput v16, v2, v17

    sget v16, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v17, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    add-float v16, v16, v17

    sget v17, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float v16, v16, v17

    const/16 v17, 0xb

    aput v16, v2, v17

    const/16 v16, 0xc

    aput v0, v2, v16

    const/16 v16, 0xd

    aput v0, v2, v16

    sget v16, Lcom/android/systemui/infinity/background/TextureBackground;->imageW:F

    sget v17, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    add-float v16, v16, v17

    sget v17, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float v16, v16, v17

    const/16 v17, 0xe

    aput v16, v2, v17

    sget v16, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v17, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float v16, v16, v17

    const/16 v17, 0xf

    aput v16, v2, v17

    const/16 v16, 0x10

    aput v10, v2, v16

    const/16 v16, 0x11

    aput v0, v2, v16

    sget v16, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v17, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float v16, v16, v17

    const/16 v17, 0x12

    aput v16, v2, v17

    sget v16, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v17, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float v16, v16, v17

    const/16 v17, 0x13

    aput v16, v2, v17

    const/16 v16, 0x14

    aput v10, v2, v16

    const/16 v16, 0x15

    aput v10, v2, v16

    sget v16, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v17, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float v16, v16, v17

    const/16 v17, 0x16

    aput v16, v2, v17

    sget v16, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v17, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    add-float v16, v16, v17

    sget v17, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float v16, v16, v17

    const/16 v17, 0x17

    aput v16, v2, v17

    sput-object v2, Lcom/android/systemui/infinity/background/TextureBackground;->VERTEX_DATA_P:[F

    new-array v1, v1, [F

    aput v4, v1, v3

    aput v4, v1, v5

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v3, Lcom/android/systemui/infinity/background/TextureBackground;->imageW:F

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    sget v3, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v2, v3

    aput v2, v1, v7

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v3, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    sget v3, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v2, v3

    aput v2, v1, v9

    aput v10, v1, v6

    aput v10, v1, v11

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v3, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v2, v3

    aput v2, v1, v13

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v3, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v2, v3

    aput v2, v1, v14

    aput v0, v1, v12

    aput v10, v1, v15

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v3, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v2, v3

    const/16 v3, 0xa

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v3, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    add-float/2addr v2, v3

    sget v3, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v2, v3

    const/16 v3, 0xb

    aput v2, v1, v3

    const/16 v2, 0xc

    aput v0, v1, v2

    const/16 v2, 0xd

    aput v0, v1, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->imageW:F

    sget v3, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    add-float/2addr v2, v3

    sget v3, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v2, v3

    const/16 v3, 0xe

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v3, Lcom/android/systemui/infinity/background/TextureBackground;->imageH:F

    add-float/2addr v2, v3

    sget v3, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v2, v3

    const/16 v3, 0xf

    aput v2, v1, v3

    const/16 v2, 0x10

    aput v10, v1, v2

    const/16 v2, 0x11

    aput v0, v1, v2

    sget v0, Lcom/android/systemui/infinity/background/TextureBackground;->imageW:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    add-float/2addr v0, v2

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v0, v2

    const/16 v2, 0x12

    aput v0, v1, v2

    sget v0, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v0, v2

    const/16 v2, 0x13

    aput v0, v1, v2

    const/16 v0, 0x14

    aput v10, v1, v0

    const/16 v0, 0x15

    aput v10, v1, v0

    sget v0, Lcom/android/systemui/infinity/background/TextureBackground;->x:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapW:F

    div-float/2addr v0, v2

    const/16 v2, 0x16

    aput v0, v1, v2

    sget v0, Lcom/android/systemui/infinity/background/TextureBackground;->y:F

    sget v2, Lcom/android/systemui/infinity/background/TextureBackground;->mapH:F

    div-float/2addr v0, v2

    const/16 v2, 0x17

    aput v0, v1, v2

    sput-object v1, Lcom/android/systemui/infinity/background/TextureBackground;->VERTEX_DATA_L:[F

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/infinity/common/VertexArray;

    sget-object v1, Lcom/android/systemui/infinity/background/TextureBackground;->VERTEX_DATA_P:[F

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v0, p0, Lcom/android/systemui/infinity/background/TextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/infinity/common/VertexArray;

    sget-object v1, Lcom/android/systemui/infinity/background/TextureBackground;->VERTEX_DATA_L:[F

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v0, p0, Lcom/android/systemui/infinity/background/TextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    :goto_0
    return-void
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/infinity/common/TextureShaderProgram;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/infinity/background/TextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/common/TextureShaderProgram;->getPositionAttributeLocation()I

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/background/TextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

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

.class public Lcom/android/systemui/infinity/common/VertexArray;
.super Ljava/lang/Object;
.source "VertexArray.java"


# instance fields
.field private final floatBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>([F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/common/VertexArray;->floatBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public getData(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/common/VertexArray;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    return v0
.end method

.method public setData(IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/common/VertexArray;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public setVertexAttribPointer(IIII)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/infinity/common/VertexArray;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v6, p0, Lcom/android/systemui/infinity/common/VertexArray;->floatBuffer:Ljava/nio/FloatBuffer;

    const/16 v3, 0x1406

    const/4 v4, 0x0

    move v1, p2

    move v2, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/common/VertexArray;->floatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public updateBuffer([FII)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/common/VertexArray;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/common/VertexArray;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/systemui/infinity/common/VertexArray;->floatBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.class public Lcom/android/systemui/infinity/common/TextureHelper;
.super Ljava/lang/Object;
.source "TextureHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTexture(Landroid/content/Context;I)I
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v1, v2

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return v2

    :cond_1
    aget v0, v1, v2

    const/16 v5, 0xde1

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v6, 0x2601

    invoke-static {v5, v0, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    invoke-static {v5, v0, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v5, v2, v4, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget v0, v1, v2

    return v0
.end method

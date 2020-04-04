.class public Lcom/samsung/android/camera/vision/Image;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;
    }
.end annotation


# instance fields
.field private mBuffer:[B

.field private mFormat:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field private mHeight:I

.field private mImagePtr:J

.field private mIntBuffer:[I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "Barcode.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "saiv"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/vision/Image;->mImagePtr:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/camera/vision/Image;->mBuffer:[B

    iput-object v2, p0, Lcom/samsung/android/camera/vision/Image;->mIntBuffer:[I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/camera/vision/Image;->mWidth:I

    iput v2, p0, Lcom/samsung/android/camera/vision/Image;->mHeight:I

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    iput-wide p1, p0, Lcom/samsung/android/camera/vision/Image;->mImagePtr:J

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/vision/Image;->getWidth(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/vision/Image;->mWidth:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/vision/Image;->getHeight(J)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/vision/Image;->mHeight:I

    invoke-static {}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->values()[Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/vision/Image;->getFormat(J)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/camera/vision/Image;->mFormat:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    iget v0, p0, Lcom/samsung/android/camera/vision/Image;->mWidth:I

    iget v1, p0, Lcom/samsung/android/camera/vision/Image;->mHeight:I

    iget-object v2, p0, Lcom/samsung/android/camera/vision/Image;->mFormat:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    invoke-virtual {v2}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->ordinal()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/camera/vision/Image;->bufferSize(III)I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/vision/Image;->getData(J)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/vision/Image;->mBuffer:[B

    iget-object v1, p0, Lcom/samsung/android/camera/vision/Image;->mBuffer:[B

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can`t create image buffer\n"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can`t calculate buffer size\n"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImagePtr is null\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native bufferSize(III)I
.end method

.method private native getData(J)[B
.end method

.method private native getFormat(J)I
.end method

.method private native getHeight(J)I
.end method

.method private native getWidth(J)I
.end method

.method private native release(J[B)V
.end method

.method private native releaseInt(J[I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/camera/vision/Image;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/vision/Image;->mBuffer:[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/camera/vision/Image;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/camera/vision/Image;->mWidth:I

    return v0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/camera/vision/Image;->mBuffer:[B

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/camera/vision/Image;->mImagePtr:J

    iget-object v2, p0, Lcom/samsung/android/camera/vision/Image;->mBuffer:[B

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/camera/vision/Image;->release(J[B)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/vision/Image;->mIntBuffer:[I

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/camera/vision/Image;->mImagePtr:J

    iget-object v2, p0, Lcom/samsung/android/camera/vision/Image;->mIntBuffer:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/camera/vision/Image;->releaseInt(J[I)V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/vision/Image;->mImagePtr:J

    return-void
.end method

.class public Lcom/samsung/android/media/heif/SemInputImage;
.super Ljava/lang/Object;
.source "SemInputImage.java"


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mColorFormat:I

.field private mFd:Ljava/io/FileDescriptor;

.field private final mHeight:I

.field private mRotationDegree:I

.field private mSliceHeight:I

.field private mStride:I

.field private final mWidth:I


# direct methods
.method private constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mWidth:I

    iput p2, p0, Lcom/samsung/android/media/heif/SemInputImage;->mHeight:I

    iput p3, p0, Lcom/samsung/android/media/heif/SemInputImage;->mColorFormat:I

    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mStride:I

    iput p2, p0, Lcom/samsung/android/media/heif/SemInputImage;->mSliceHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mRotationDegree:I

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;III)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/media/heif/SemInputImage;-><init>(III)V

    iput-object p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mFd:Ljava/io/FileDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;III)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/media/heif/SemInputImage;-><init>(III)V

    iput-object p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([BIIIII)V
    .locals 1

    invoke-direct {p0, p4, p5, p6}, Lcom/samsung/android/media/heif/SemInputImage;-><init>(III)V

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getColorFormat()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mColorFormat:I

    return v0
.end method

.method getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mHeight:I

    return v0
.end method

.method public getRotationDegree()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mRotationDegree:I

    return v0
.end method

.method public getSliceHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mSliceHeight:I

    return v0
.end method

.method public getStride()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mStride:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mWidth:I

    return v0
.end method

.method public setRotationDegree(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mRotationDegree:I

    return-void
.end method

.method public setSliceHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mSliceHeight:I

    return-void
.end method

.method public setStride(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mStride:I

    return-void
.end method

.class public final Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;
.super Ljava/lang/Object;
.source "ImageBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/vidsol/simgp/ImageBuffer$DataSpace;,
        Lcom/samsung/android/media/vidsol/simgp/ImageBuffer$ColorSpace;
    }
.end annotation


# static fields
.field public static final SCMN_CS_ARGB8888:I = 0x1f6

.field public static final SCMN_CS_GRAY:I = 0x0

.field public static final SCMN_CS_GRAYA:I = 0xa

.field public static final SCMN_CS_I420:I = 0x1

.field public static final SCMN_CS_IYUV:I = 0x1

.field public static final SCMN_CS_NV12:I = 0x6

.field public static final SCMN_CS_NV21:I = 0x7

.field public static final SCMN_CS_P010LE:I = 0x259

.field public static final SCMN_CS_RGB888:I = 0x190

.field public static final SCMN_CS_RGBA8888:I = 0x1f4

.field public static final SCMN_CS_UNKNOWN:I = 0x3e8

.field public static final SCMN_CS_Y16:I = 0x9

.field public static final SCMN_CS_Y800:I = 0x0

.field public static final SCMN_CS_YUV400:I = 0x0

.field public static final SCMN_CS_YUV420:I = 0x1

.field public static final SCMN_CS_YUV420P10LE:I = 0x258

.field public static final SCMN_CS_YUV422:I = 0x2

.field public static final SCMN_CS_YUV422N:I = 0x2

.field public static final SCMN_CS_YUV422W:I = 0x8

.field public static final SCMN_CS_YUV444:I = 0x3

.field public static final SCMN_CS_YV12:I = 0x4

.field public static final SCMN_CS_YV16:I = 0x5

.field public static final SCMN_DS_BT2020:I = 0x14

.field public static final SCMN_DS_BT709:I = 0xa

.field public static final SCMN_IMGB_MAX_PLANE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SCMN_IMGB"


# instance fields
.field private mFrameSize:J

.field private mNativeBuffer:Ljava/nio/ByteBuffer;

.field private mNativeHandle:J


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "simgp_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->nativeSetup(III)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width or height must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetColorSpace()I
.end method

.method private native nativeGetHeight()I
.end method

.method private native nativeGetWidth()I
.end method

.method private native nativeSetup(III)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "SCMN_IMGB"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->mNativeBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getColorSpace()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->nativeGetColorSpace()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->nativeGetHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->nativeGetWidth()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->nativeFinalize()V

    return-void
.end method

.method public setBuffer(Ljava/io/File;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->mNativeBuffer:Ljava/nio/ByteBuffer;

    int-to-long v4, p2

    iget-wide v6, p0, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->mFrameSize:J

    mul-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    const-string v4, "SCMN_IMGB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " read : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public setDataSource(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->mNativeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    const-string v4, "SCMN_IMGB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " read : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public setDataSource(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->mNativeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setDataSource([BII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImageBuffer;->mNativeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

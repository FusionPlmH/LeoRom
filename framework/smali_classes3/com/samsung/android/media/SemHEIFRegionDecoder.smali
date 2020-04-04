.class public Lcom/samsung/android/media/SemHEIFRegionDecoder;
.super Ljava/lang/Object;
.source "SemHEIFRegionDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemHEIFRegionDecoder"

.field private static mLibraryLoaded:Z


# instance fields
.field private mHeight:I

.field private mNativeBitmapRegionDecoder:J

.field private final mNativeLock:Ljava/lang/Object;

.field private mRecycled:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mLibraryLoaded:Z

    invoke-static {}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->loadLibrary()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I

    iput v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    iput-boolean v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadLibrary()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mLibraryLoaded:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "heifregiondec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mLibraryLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemHEIFRegionDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load the native library : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static native nativeClean(J)V
.end method

.method private static native nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeNewInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemHEIFRegionDecoder;
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemHEIFRegionDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeNewInstance(Ljava/lang/String;)Lcom/samsung/android/media/SemHEIFRegionDecoder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "decodeRegion called on recycled region decoder"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lez v1, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int v4, v2, v1

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v1

    move v2, v4

    add-int v4, v3, v1

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v1

    move v3, v4

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v3, :cond_2

    :cond_1
    const-string v4, "SemHEIFRegionDecoder"

    const-string v5, "RegionDecode Input Bitmap error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object v4

    :cond_2
    iget-wide v4, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iget v10, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    move-object v10, p2

    invoke-static/range {v4 .. v10}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeDecodeRegion(JIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    monitor-exit v0

    return-object v4

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "rectangle is outside the image"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "getHeight called on recycled region decoder"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I

    monitor-exit v0

    return v1

    :cond_0
    iget-wide v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeGetHeight(J)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I

    iget v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mHeight:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWidth()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "getWidth called on recycled region decoder"

    invoke-direct {p0, v1}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->checkRecycled(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I

    monitor-exit v0

    return v1

    :cond_0
    iget-wide v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeGetWidth(J)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I

    iget v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mWidth:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    return v0
.end method

.method public recycle()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mNativeBitmapRegionDecoder:J

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemHEIFRegionDecoder;->nativeClean(J)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/media/SemHEIFRegionDecoder;->mRecycled:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
.super Ljava/lang/Object;
.source "InteractiveShotInfo.java"

# interfaces
.implements Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/AppController;


# static fields
.field static mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;


# instance fields
.field final KEY_INFO:Ljava/lang/String;

.field final KEY_VIDEO:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field private bInit:Z

.field private isSEFDataFlagNull:Z

.field public mAlgoType:I

.field public mAlgoVersion:I

.field public mCameraType:I

.field public mCaptureDirection:I

.field public mCropHeight:I

.field public mCropWidth:I

.field public mCropX:I

.field public mCropY:I

.field private mFilePath:Ljava/lang/String;

.field public mFirstFrame:I

.field public mHeight:I

.field public mLastFrame:I

.field public mMatrixHeight:I

.field public mMatrixWidth:I

.field public mOrientation:I

.field public mSRCMatrix:[[F

.field public mTotalFrames:I

.field public mVideo:[B

.field public mVideoLength:I

.field public mVideoPath:Ljava/lang/String;

.field public mVideoStart:I

.field public mWidth:I

.field private sefFile:Ljava/io/File;

.field private tempPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "InteractiveShotInfo"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->TAG:Ljava/lang/String;

    const-string v0, "Interactive_Panorama_Info"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->KEY_INFO:Ljava/lang/String;

    const-string v0, "Interactive_Panorama_000"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->KEY_VIDEO:Ljava/lang/String;

    const-string v0, "/.interactivePano.mp4"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->tempPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->isSEFDataFlagNull:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mWidth:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mHeight:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFirstFrame:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mLastFrame:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoType:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoVersion:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mOrientation:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCaptureDirection:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCameraType:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixWidth:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixHeight:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoStart:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoLength:I

    return-void
.end method

.method public static declared-synchronized freeInstance()V
    .locals 2

    const-class v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getInfo(Ljava/lang/String;)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->sefFile:Ljava/io/File;

    const-string v1, "Interactive_Panorama_Info"

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "InteractiveShotInfo"

    const-string v2, "SEF:getSEFData KEY_INFO returns null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mWidth:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mHeight:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFirstFrame:I

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mLastFrame:I

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mLastFrame:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFirstFrame:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    if-gtz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoType:I

    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoVersion:I

    const/4 v2, 0x7

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mOrientation:I

    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCaptureDirection:I

    const/16 v2, 0x9

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCameraType:I

    const/16 v3, 0xa

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    const/16 v3, 0xb

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    const/16 v3, 0xc

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    const/16 v3, 0xd

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    const/16 v3, 0xe

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixWidth:I

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixHeight:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    filled-new-array {v3, v2}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    array-length v3, v3

    if-lt v2, v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->sefFile:Ljava/io/File;

    const-string v3, "Interactive_Panorama_000"

    invoke-static {v2, v3}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v2

    move-object v0, v2

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->isSEFDataFlagNull:Z

    const-string v1, "InteractiveShotInfo"

    const-string v2, "SEF Data Null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getParentDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoPath:Ljava/lang/String;

    :cond_3
    const-string v2, "InteractiveShotInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "input video file path=  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mVideoPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    nop

    nop

    return-void

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const/4 v2, 0x0

    :cond_4
    throw v3

    :cond_5
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v4, v4, v2

    array-length v4, v4

    if-lt v3, v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v4, v4, v2

    array-length v4, v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x10

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInt([BI)I

    move-result v4

    int-to-double v5, v4

    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v7, v7, v2

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double v8, v5, v8

    double-to-float v8, v8

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    const-string v1, "InteractiveShotInfo"

    const-string v2, "Total Frames is less than or equal to Zero "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
    .locals 2

    const-class v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getInt([BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/lit8 p2, p2, 0x4

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static getParentDirPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getResize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getResizedValue(II)V
    .locals 6

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    array-length v2, v2

    if-lt v1, v2, :cond_1

    const/16 v1, 0x500

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mWidth:I

    const/16 v1, 0x2d0

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mHeight:I

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v2, v2, v1

    const/4 v3, 0x6

    aget v2, v2, v3

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v4, v4, v1

    div-float v5, v2, v0

    aput v5, v4, v3

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    const/4 v4, 0x7

    aget v2, v3, v4

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    div-float v5, v2, v0

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "InteractiveShotInfo"

    const-string v1, "frozen moment sharevia version 1.0.8"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bInit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFilePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->sefFile:Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->sefFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "InteractiveShotInfo"

    const-string v1, "SEF File not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->getInfo(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->isSEFDataFlagNull:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->bInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public printInfo()V
    .locals 4

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mTotalFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mFirstFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mLastFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mAlgoVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCaptureDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mCropHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractiveShotInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: values: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mMatrixHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const-string v1, "InteractiveShotInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IP:: values: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public transformRotation()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/InteractiveShotInfo;->mOrientation:I

    if-eqz v1, :cond_3

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_2

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    nop

    :goto_0
    return v0
.end method

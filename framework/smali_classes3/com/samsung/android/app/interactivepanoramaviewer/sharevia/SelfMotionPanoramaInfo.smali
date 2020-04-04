.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
.super Ljava/lang/Object;
.source "SelfMotionPanoramaInfo.java"

# interfaces
.implements Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/AppController;


# static fields
.field private static final SEF_KEYNAME_SOUND_SHOT_WAVE:Ljava/lang/String; = "Motion_Panorama_AAC_000"

.field private static final SMP_HEIGHT:I = 0x5a0

.field private static final SMP_WIDTH:I = 0x780

.field static mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;


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

.field public mExtraFramesEndMatrix:[[F

.field public mExtraFramesStartMatrix:[[F

.field private mFilePath:Ljava/lang/String;

.field public mFirstFrame:I

.field public mFrameRendererFlag:[I

.field public mHeight:I

.field public mIsFilpRequired:Z

.field public mLastFrame:I

.field public mMatrixHeight:I

.field public mMatrixWidth:I

.field public mMaxInputFrameCount:I

.field public mNumExtraFramesEnd:I

.field public mNumExtraFramesStart:I

.field public mOrientation:I

.field public mSRCMatrix:[[F

.field public mTimeStamp:[J

.field public mTotalFrames:I

.field public mVideo:[B

.field public mVideoLength:I

.field public mVideoPath:Ljava/lang/String;

.field public mVideoStart:I

.field public mWidth:I

.field public maxFramesForViewAngleFitting:I

.field private sefFile:Ljava/io/File;

.field private tempPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->TAG:Ljava/lang/String;

    const-string v0, "Wide_Selfie_Motion_Info"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->KEY_INFO:Ljava/lang/String;

    const-string v0, "Wide_Selfie_Motion_MP4_000"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->KEY_VIDEO:Ljava/lang/String;

    const-string v0, "/.interactivePano.mp4"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->tempPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->isSEFDataFlagNull:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoType:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoVersion:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCaptureDirection:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCameraType:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixWidth:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixHeight:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoStart:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoLength:I

    return-void
.end method

.method public static declared-synchronized freeInstance()V
    .locals 2

    const-class v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getInfo(Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->sefFile:Ljava/io/File;

    const-string v2, "Wide_Selfie_Motion_Info"

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "InteractivePano_SelfMotionPanoramaInfo"

    const-string v3, "SEF:getSEFData KEY_INFO returns null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    const/4 v3, 0x3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    const/4 v3, 0x4

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    const/16 v5, 0x780

    if-ne v4, v5, :cond_a

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    const/16 v5, 0x5a0

    if-ne v4, v5, :cond_a

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    if-lez v4, :cond_a

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    if-ltz v4, :cond_a

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    if-ltz v4, :cond_a

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    if-lez v4, :cond_a

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    if-le v4, v5, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v4, 0x5

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoType:I

    const/4 v4, 0x6

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoVersion:I

    const/4 v4, 0x7

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    const/16 v4, 0x8

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCaptureDirection:I

    const/16 v4, 0x9

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCameraType:I

    const/16 v5, 0xa

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    if-ne v5, v2, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v0

    :goto_0
    iput-boolean v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mIsFilpRequired:Z

    const/16 v5, 0xb

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMaxInputFrameCount:I

    const/16 v5, 0xc

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    const/16 v5, 0xd

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    const/16 v5, 0xe

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    const/16 v5, 0xf

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    const/16 v5, 0x10

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixWidth:I

    const/16 v5, 0x11

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixHeight:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    filled-new-array {v5, v4}, [I

    move-result-object v4

    const-class v5, F

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v5, v5

    if-lt v4, v5, :cond_8

    const v4, 0x8ce8

    move v5, v4

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    new-array v6, v6, [J

    iput-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTimeStamp:[J

    const/4 v6, 0x0

    :goto_2
    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    if-lt v6, v7, :cond_7

    const/16 v6, 0xfa0

    add-int/lit16 v7, v5, 0x1f40

    add-int/2addr v7, v6

    div-int/2addr v7, v3

    iget v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    const/4 v8, 0x0

    :goto_3
    iget v9, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    if-lt v8, v9, :cond_6

    add-int/lit16 v8, v5, 0x1f40

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v8, v9

    div-int/2addr v8, v3

    move v3, v8

    const-string v7, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "offset 2 ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->updateExtraFrameData([BI)V

    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->sefFile:Ljava/io/File;

    const-string v8, "Wide_Selfie_Motion_MP4_000"

    invoke-static {v7, v8}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v7

    move-object v1, v7

    if-nez v1, :cond_3

    iput-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->isSEFDataFlagNull:Z

    const-string v2, "InteractivePano_SelfMotionPanoramaInfo"

    const-string v7, "SEF Data Null"

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getParentDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->tempPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    :cond_4
    const-string v8, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "input video file path=  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    invoke-virtual {v8, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    nop

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    nop

    nop

    return v2

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    const/4 v8, 0x0

    :cond_5
    throw v2

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-direct {p0, v1, v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v7

    iget-object v10, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    aput v7, v10, v8

    add-int/lit8 v8, v8, 0x1

    move v7, v9

    goto/16 :goto_3

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTimeStamp:[J

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getLong([BI)J

    move-result-wide v8

    aput-wide v8, v7, v6

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v5, 0x0

    :goto_4
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v6, v6, v4

    array-length v6, v6

    if-lt v5, v6, :cond_9

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v6, v6, v4

    array-length v6, v6

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x12

    invoke-direct {p0, v1, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v6

    int-to-double v7, v6

    iget-object v9, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v9, v9, v4

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double v10, v7, v10

    double-to-float v10, v10

    aput v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    const-string v2, "InteractivePano_SelfMotionPanoramaInfo"

    const-string v3, "Total Frames is less than or equal to Zero "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
    .locals 2

    const-class v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mInstance:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;
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

.method private getLong([BI)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    aget-byte v0, p1, p2

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x7

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
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

.method private updateExtraFrameData([BI)V
    .locals 12

    add-int/lit8 v0, p2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    add-int/lit8 p2, v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesStart:I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INFO: maxFramesForViewAngleFitting = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mNumExtraFramesStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    const/16 v1, 0x9

    mul-int/2addr v0, v1

    add-int/2addr v0, p2

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    filled-new-array {v2, v1}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    array-length v3, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-wide v4, 0x412e848000000000L    # 1000000.0

    if-lt v2, v3, :cond_2

    move p2, v0

    add-int/lit8 v2, p2, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesEnd:I

    iget p2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    filled-new-array {p2, v1}, [I

    move-result-object p2

    const-class v1, F

    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[F

    iput-object p2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    const/4 p2, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    array-length v1, v1

    if-lt p2, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    aget-object v3, v3, p2

    array-length v3, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-lt v1, v3, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    :try_start_3
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result v2

    int-to-double v6, v2

    iget-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    aget-object v8, v8, p2

    div-double v9, v6, v4

    double-to-float v9, v9

    aput v9, v8, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v0, p2

    move v2, v3

    goto :goto_5

    :catch_1
    move-exception p2

    goto :goto_4

    :cond_2
    const/4 v3, 0x0

    :goto_3
    :try_start_4
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    aget-object v6, v6, v2

    array-length v6, v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-lt v3, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v6, p2, 0x1

    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInt([BI)I

    move-result p2

    int-to-double v7, p2

    iget-object v9, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    aget-object v9, v9, v2

    div-double v10, v7, v4

    double-to-float v10, v10

    aput v10, v9, v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v3, v3, 0x1

    move p2, v6

    goto :goto_3

    :catch_2
    move-exception p2

    move-object v0, p2

    move v2, v6

    goto :goto_5

    :catch_3
    move-exception v0

    move v2, p2

    goto :goto_5

    :catch_4
    move-exception p2

    move v2, v0

    :goto_4
    move-object v0, p2

    :goto_5
    move-object p2, v0

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "INFO: updateExtraFrameData"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void
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
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v2, v2

    if-lt v1, v2, :cond_1

    const/16 v1, 0x500

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    const/16 v1, 0x2d0

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v2, v2, v1

    const/4 v3, 0x6

    aget v2, v2, v3

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v4, v4, v1

    div-float v5, v2, v0

    aput v5, v4, v3

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v1

    const/4 v4, 0x7

    aget v2, v3, v4

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

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
    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string/jumbo v1, "self motion pano sharevia version 1.0.0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bInit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFilePath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->sefFile:Ljava/io/File;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->sefFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string v1, "SEF File not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->getInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    const-string v1, "SEF File INFO is incorrect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->isSEFDataFlagNull:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->bInit:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_3
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

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mWidth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mHeight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mTotalFrames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mTotalFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mFirstFrame: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFirstFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mLastFrame: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mLastFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mAlgoType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mAlgoVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mAlgoVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mOrientation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mCaptureDirection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCaptureDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mCameraType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mCropX: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mCropY: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mCropWidth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mCropHeight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mCropHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mMatrixWidth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP:: mMatrixHeight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMatrixHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INFO: mIsFilpRequired = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mIsFilpRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INFO: mMaxInputFrameCount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mMaxInputFrameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IP:: mSRCMatrix["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mSRCMatrix:[[F

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    if-eqz v0, :cond_2

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP :: mFrameRenderingFlags = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mFrameRendererFlag:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP: maxFramesForViewAngleFitting = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->maxFramesForViewAngleFitting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP: mNumExtraFramesStart = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    array-length v1, v1

    if-lt v0, v1, :cond_3

    goto :goto_3

    :cond_3
    const-string v1, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IP: mExtraFramesStartMatrix["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesStartMatrix:[[F

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const-string v0, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP: mNumExtraFramesEnd = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mNumExtraFramesEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    array-length v1, v1

    if-lt v0, v1, :cond_5

    goto :goto_5

    :cond_5
    const-string v1, "InteractivePano_SelfMotionPanoramaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IP: mExtraFramesEndMatrix["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mExtraFramesEndMatrix:[[F

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    return-void
.end method

.method public transformRotation()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/SelfMotionPanoramaInfo;->mOrientation:I

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

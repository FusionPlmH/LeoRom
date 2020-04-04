.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;
.super Ljava/lang/Object;
.source "DecoderInterfaceFHD.java"

# interfaces
.implements Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/AppController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;,
        Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;,
        Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;
    }
.end annotation


# static fields
.field private static final DECODE_WAIT_TIME:J = 0x2710L

.field public static final GOP_FACTOR:I = 0x4


# instance fields
.field IFRAME_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field lockObj:Ljava/lang/Object;

.field mBufferSize:I

.field private mColorFormat:I

.field mCroppedBuffer:Ljava/nio/ByteBuffer;

.field protected volatile mCurrentState:I

.field mExif:I

.field mFile:Ljava/io/File;

.field mFormat:Landroid/media/MediaFormat;

.field mFrameHeight:I

.field mFrameWidth:I

.field mFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;",
            ">;"
        }
    .end annotation
.end field

.field mKeyFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;",
            ">;"
        }
    .end annotation
.end field

.field mMediaDecoder:Landroid/media/MediaCodec;

.field mMediaExtractor:Landroid/media/MediaExtractor;

.field mNextGOPTs:J

.field mPPhandler1:I

.field mPath:Ljava/lang/String;

.field mResizeBuffer:Ljava/nio/ByteBuffer;

.field mRetriever:Landroid/media/MediaMetadataRetriever;

.field mSyncTs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDuration:J

.field nFramesInLastGop:I

.field nTotalFrame:I

.field nTotalSyncFrame:I

.field prevGOPRequestDir:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalSyncFrame:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mNextGOPTs:J

    const/16 v1, 0x500

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    const/16 v1, 0x2d0

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->IFRAME_INTERVAL:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPPhandler1:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->lockObj:Ljava/lang/Object;

    const-string v1, "DecoderInterface"

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->TAG:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mExif:I

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    iput-object p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPath:Ljava/lang/String;

    return-void
.end method

.method private calculateGOPSize(I)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v10, -0x1

    cmp-long v12, v6, v10

    const/4 v13, 0x1

    if-nez v12, :cond_4

    iput v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalSyncFrame:I

    iget-object v12, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v8, v9, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const-string v12, "DecoderInterface"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "calculateGOPSize I frame done: prevTs"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " time: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    cmp-long v3, v8, v10

    if-nez v3, :cond_1

    iput v13, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    :cond_1
    :goto_1
    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "DecoderInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "calculateGOPSize nFramesInLastGop = "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalSyncFrame:I

    if-ne v3, v13, :cond_2

    move/from16 v1, p1

    goto :goto_2

    :cond_2
    iget v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    sub-int v3, p1, v3

    iget v10, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalSyncFrame:I

    sub-int/2addr v10, v13

    div-int v1, v3, v10

    :goto_2
    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v10, 0x0

    invoke-virtual {v3, v10, v11, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const-string v3, "DecoderInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "GOP size"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "total sync frames"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalSyncFrame:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-wide/16 v10, 0x0

    iget v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    add-int/2addr v3, v13

    iput v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    goto :goto_1

    :cond_4
    move-wide v10, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const-string v3, "DecoderInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "calculateGOPSize 1 cur = "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v8, v9, v13}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    const-string v3, "DecoderInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "calculateGOPSize 2 cur = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v10

    goto/16 :goto_0
.end method

.method private calculateTotalFrames()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private calculateTotalIFrames()I
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const-wide/16 v5, 0x0

    :goto_0
    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const-string v1, "DecoderInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "no. of I frames"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    const-string v1, "DecoderInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "calculateTotalIFrames 1 cur = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    const-string v1, "DecoderInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "calculateTotalIFrames 2 cur = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public deInit()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->lockObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "DecoderInterface"

    const-string v2, "deinit entry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3ee

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    :cond_1
    const-string v1, "DecoderInterface"

    const-string v2, "deinit exit"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContentMetaData()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;-><init>(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;)V

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    iput v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mWidth:I

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    iput v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mHeight:I

    return-object v0
.end method

.method public getGOPInterval()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->IFRAME_INTERVAL:I

    return v0
.end method

.method public getTotalFrameCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    return v0
.end method

.method public init(Z)V
    .locals 7

    const-string v0, "DecoderInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init entry "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mRetriever:Landroid/media/MediaMetadataRetriever;

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mRetriever:Landroid/media/MediaMetadataRetriever;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mExif:I

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mExif:I

    :cond_2
    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mBufferSize:I

    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-lt v2, v3, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    if-nez v1, :cond_3

    const-string v1, "DecoderInterface"

    const-string v2, "decoder is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-direct {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->calculateTotalFrames()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    const-string v1, "DecoderInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init TotalFrameCount"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->calculateGOPSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->IFRAME_INTERVAL:I

    const-string v1, "DecoderInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IFRAME_INTERVAL = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->IFRAME_INTERVAL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DecoderInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init Done width, height, exif "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mExif:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string/jumbo v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    :try_start_1
    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v6, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iput-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFormat:Landroid/media/MediaFormat;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public nextframe(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;)Z
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v0, "DecoderInterface"

    const-string v4, "data is null"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    iget v5, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    iget-object v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mBufferSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    :cond_2
    const/4 v0, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-object v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v6, v0

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v8, v0

    const/4 v0, -0x1

    move v9, v0

    const/4 v10, 0x1

    :try_start_1
    iget-object v11, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    const-wide/16 v12, 0x2710

    invoke-virtual {v11, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4

    move v9, v11

    nop

    if-ltz v9, :cond_4

    :try_start_2
    aget-object v11, v7, v9

    iget-object v14, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14, v11, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    move/from16 v21, v14

    if-gez v21, :cond_3

    :try_start_3
    iget-object v14, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x4

    move v15, v9

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    nop

    :try_start_4
    const-string v14, "DecoderInterface"

    const-string v15, "THis is the End of the Stream"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_0
    move-exception v0

    return v10

    :cond_3
    :try_start_5
    iget-object v14, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    const/16 v16, 0x0

    iget-object v15, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v18

    const/16 v20, 0x0

    move v15, v9

    move/from16 v17, v21

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    nop

    :try_start_6
    iget-object v14, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_1
    move-exception v0

    return v10

    :cond_4
    :goto_0
    move v11, v0

    :try_start_7
    iget-object v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4

    nop

    const/16 v11, 0x3f4

    packed-switch v0, :pswitch_data_0

    :try_start_8
    iget v12, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_2

    :pswitch_0
    const-string v12, "DecoderInterface"

    const-string v13, "dequeueOutputBuffer timed out! with wait period 10000"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_1
    iget-object v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v12

    iput-object v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFormat:Landroid/media/MediaFormat;

    iget-object v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFormat:Landroid/media/MediaFormat;

    const-string v13, "color-format"

    invoke-virtual {v12, v13}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "DecoderInterface"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "New format "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFormat:Landroid/media/MediaFormat;

    const-string v13, "color-format"

    invoke-virtual {v12, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0x15

    if-ne v12, v13, :cond_5

    iput v3, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    goto :goto_1

    :cond_5
    const/16 v13, 0x13

    if-ne v12, v13, :cond_6

    iput v10, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    :cond_6
    :goto_1
    const-string v13, "DecoderInterface"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "mColorFormat "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_7
    const-string v12, "DecoderInterface"

    const-string v13, "cf not present"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_2
    const-string v12, "DecoderInterface"

    const-string v13, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    move-object v6, v12

    goto/16 :goto_4

    :goto_2
    if-nez v12, :cond_8

    const-string v10, "DecodeActivity"

    const-string v12, "end of stream------------------"

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v11, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I

    return v3

    :cond_8
    iget v12, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v13, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    iget v14, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    mul-int/2addr v13, v14

    mul-int/lit8 v13, v13, 0x3

    div-int/lit8 v13, v13, 0x2

    if-eq v12, v13, :cond_9

    iget v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    add-int/lit16 v12, v12, 0x80

    sub-int/2addr v12, v10

    and-int/lit8 v4, v12, -0x80

    iget v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    add-int/lit8 v12, v12, 0x20

    sub-int/2addr v12, v10

    and-int/lit8 v5, v12, -0x20

    :cond_9
    aget-object v12, v6, v0

    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v13, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v13, v0}, Landroid/media/MediaCodec;->getOutputImage(I)Landroid/media/Image;

    move-result-object v13

    move-object v15, v13

    if-eqz v15, :cond_a

    iget-object v14, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Landroid/media/Image;->getWidth()I

    move-result v16

    invoke-virtual {v15}, Landroid/media/Image;->getHeight()I

    move-result v17

    iget v13, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    iget v11, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    iget v10, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    move/from16 v18, v13

    move-object v13, v12

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v11

    move/from16 v19, v10

    invoke-static/range {v13 .. v19}, Lcom/samsung/android/app/interactivepanoramaviewer/util/JniUtil;->swCrop(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)V

    nop

    move-object/from16 v19, v12

    goto :goto_3

    :cond_a
    move-object/from16 v20, v15

    iget-object v13, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    iget v14, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    iget v10, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    iget v11, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    iget v15, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    move-object/from16 v19, v12

    move/from16 v18, v15

    move v15, v5

    move/from16 v16, v10

    move/from16 v17, v11

    invoke-static/range {v12 .. v18}, Lcom/samsung/android/app/interactivepanoramaviewer/util/JniUtil;->swCrop(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)V

    :goto_3
    iget-object v10, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v10, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    iget-object v11, v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z

    iget-object v10, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v10, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_4
    nop

    iget v10, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_b

    const-string v10, "DecoderInterface"

    const-string v11, "OutputBuffer BUFFER_FLAG_END_OF_STREAM here"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x3f4

    iput v10, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I

    return v3

    :cond_b
    const/4 v3, 0x1

    return v3

    :catch_2
    move-exception v0

    const/4 v3, 0x1

    return v3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v3, 0x1

    return v3

    :catch_4
    move-exception v0

    return v3

    :cond_c
    :goto_5
    const-string v0, "DecoderInterface"

    const-string v4, "decoder not initialized"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public seekToRequiredGOP(I)Z
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->getGOPInterval()I

    move-result v0

    div-int v0, p1, v0

    const-string v1, "DecoderInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "req frame No ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reqIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DecoderInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tss "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_2
    const-string v2, "DecoderInterface"

    const-string/jumbo v3, "reqIndex computation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x2

    invoke-virtual {v4, v2, v3, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    invoke-virtual {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->getGOPInterval()I

    move-result v4

    mul-int/2addr v4, v0

    const-string v5, "DecoderInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "frame ts "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " extarctor ts "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "frameCounter= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    :goto_1
    const-string v0, "DecoderInterface"

    const-string v1, "decoder not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

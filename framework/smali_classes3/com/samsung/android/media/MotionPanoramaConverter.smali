.class public Lcom/samsung/android/media/MotionPanoramaConverter;
.super Ljava/lang/Object;
.source "MotionPanoramaConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;
    }
.end annotation


# static fields
.field static final QUEUE_CAPAPCITY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MotionPanoramaConverter"

.field private static final TARGET_BIT_RATE:I = 0xf42400

.field private static final TARGET_COLOUR_FORMAT:I

.field private static TARGET_ENCODE_HEIGHT:I = 0x0

.field private static TARGET_ENCODE_WIDTH:I = 0x0

.field private static final TARGET_FRAME_RATE:I = 0x1e

.field private static final TARGET_QUALITY:I

.field private static mInstance:Lcom/samsung/android/media/MotionPanoramaConverter;


# instance fields
.field TWICE_ENCODING:Z

.field volatile bStopRequested:Z

.field lock:Ljava/lang/Object;

.field mDecodeTime:J

.field mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field mEncodeTime:J

.field private mEncoder:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

.field mEncoderThread:Ljava/lang/Thread;

.field mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field mGLThread:Ljava/lang/Thread;

.field mGlTime:J

.field volatile mIsEncoderInit:Z

.field mOutSharePath:Ljava/lang/String;

.field mSEFTime:J

.field mTotalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->VM_QUALITY_HIGH:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;

    invoke-virtual {v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoQuality;->getValue()I

    move-result v0

    sput v0, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_QUALITY:I

    const/16 v0, 0x500

    sput v0, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    const/16 v0, 0x2d0

    sput v0, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    sget-object v0, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->VM_COLOR_FORMAT_RGB565:Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;

    invoke-virtual {v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer$VmVideoColorFormat;->getValue()I

    move-result v0

    sput v0, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_COLOUR_FORMAT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->TWICE_ENCODING:Z

    iput-boolean v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mIsEncoderInit:Z

    sget-object v0, Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;->ANDROID_ENCODER:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    iput-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/media/MotionPanoramaConverter;Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/MotionPanoramaConverter;->encodeMp4(Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/media/MotionPanoramaConverter;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/MotionPanoramaConverter;->processFrame(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V

    return-void
.end method

.method private decodeMp4(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "MotionPanoramaConverter"

    const-string v3, "decodeMp4 entry"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    new-instance v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;

    iget-object v3, v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->init(Z)V

    invoke-virtual {v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->getContentMetaData()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    sub-long/2addr v5, v7

    iput-wide v5, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    const-string v5, "MotionPanoramaConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "share decoder  mp4 width : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mp4 height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "decode init time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getResize()Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_0

    const v6, 0x151800

    filled-new-array {v7, v6}, [I

    move-result-object v6

    const-class v8, B

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    goto :goto_0

    :cond_0
    iget v6, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mWidth:I

    iget v8, v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mHeight:I

    mul-int/2addr v6, v8

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    filled-new-array {v7, v6}, [I

    move-result-object v6

    const-class v8, B

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v10, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;-><init>(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;)V

    new-array v11, v0, [B

    iget v0, v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mLastFrame:I

    :goto_1
    move v12, v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    add-int/lit8 v15, v5, 0x1

    :try_start_1
    aget-object v5, v6, v5

    iput-object v5, v10, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v15, v7, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    move v5, v15

    :goto_2
    if-ne v9, v12, :cond_2

    const/4 v15, 0x0

    goto :goto_3

    :cond_2
    :try_start_2
    invoke-virtual {v3, v10}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nextframe(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;)Z

    move-result v15
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    move/from16 v17, v8

    :try_start_3
    iget-wide v7, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v13

    add-long v7, v7, v18

    iput-wide v7, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    const-string v7, "MotionPanoramaConverter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "share decode isDecode= "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v15, :cond_3

    add-int/lit8 v8, v17, 0x1

    :try_start_4
    const-string v0, "MotionPanoramaConverter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "share decode nextframe done "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v10, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, v10, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_3
    :try_start_5
    iget-object v0, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v11}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    move/from16 v8, v17

    :cond_4
    :goto_4
    if-eqz v15, :cond_6

    :try_start_6
    iget-boolean v0, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->bStopRequested:Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v12

    move-object/from16 v2, p1

    const/4 v7, 0x4

    goto :goto_1

    :cond_6
    :goto_5
    goto :goto_7

    :catch_1
    move-exception v0

    move/from16 v8, v17

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v17, v8

    move v5, v15

    goto :goto_6

    :catch_3
    move-exception v0

    move/from16 v17, v8

    :goto_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->deInit()V

    move-object/from16 v20, v3

    iget-wide v2, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v13

    add-long/2addr v2, v15

    iput-wide v2, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    const-string v0, "MotionPanoramaConverter"

    const-string v2, "decodeMp4 completed"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private encodeMp4(Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V
    .locals 26

    move-object/from16 v1, p0

    const-string v0, "MotionPanoramaConverter"

    const-string v2, "encodeMp4 entry"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/media/MotionPanoramaConverter$3;->$SwitchMap$com$samsung$android$media$MotionPanoramaConverter$ENCODER:[I

    iget-object v7, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    invoke-virtual {v7}, Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    move-object/from16 v6, p2

    goto :goto_0

    :pswitch_0
    new-instance v7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;

    invoke-direct {v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;-><init>()V

    sget v8, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v9, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    const v10, 0xf42400

    const/16 v11, 0x1e

    const/4 v12, 0x1

    const/16 v13, 0x15

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v6, p2

    iget v15, v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    invoke-virtual/range {v7 .. v15}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->init(IIIIIILjava/lang/String;I)I

    move-result v5

    goto :goto_1

    :pswitch_1
    move-object/from16 v6, p2

    goto :goto_0

    :pswitch_2
    move-object/from16 v6, p2

    invoke-static {}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->getInstance()Lcom/sec/android/app/interactiveshot/jni/MP4Writer;

    move-result-object v0

    sget v9, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v10, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    sget v13, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_QUALITY:I

    const/16 v14, 0x1e

    sget v15, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_COLOUR_FORMAT:I

    move-object v8, v0

    invoke-virtual/range {v8 .. v15}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->InitMp4EngineJava(IILjava/lang/String;IIII)I

    move-result v5

    nop

    :goto_0
    move-object v7, v4

    :goto_1
    move-object v4, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    const-string v0, "MotionPanoramaConverter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "share init done with retVal"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " encode init time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mIsEncoderInit:Z

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget v10, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v11, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget v12, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v13, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v12, v13

    const/4 v13, 0x3

    mul-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    sget v14, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v15, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v14, v15

    mul-int/2addr v14, v13

    div-int/lit8 v14, v14, 0x2

    new-array v14, v14, [B

    :goto_2
    :try_start_0
    iget-boolean v15, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->bStopRequested:Z

    if-nez v15, :cond_6

    iget-object v15, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v15}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    array-length v13, v15
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5

    if-ne v13, v0, :cond_4

    :try_start_1
    iget-boolean v13, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->TWICE_ENCODING:Z

    if-eqz v13, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gtz v13, :cond_0

    nop

    move-object/from16 v19, v2

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v0

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sget-object v13, Lcom/samsung/android/media/MotionPanoramaConverter$3;->$SwitchMap$com$samsung$android$media$MotionPanoramaConverter$ENCODER:[I

    iget-object v0, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    invoke-virtual {v0}, Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;->ordinal()I

    move-result v0

    aget v0, v13, v0

    const/4 v13, 0x3

    if-eq v0, v13, :cond_1

    goto :goto_3

    :cond_1
    const/16 v0, 0x1f4

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->setTimeOutUs(I)V

    nop

    :goto_3
    iget-boolean v0, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->bStopRequested:Z

    if-nez v0, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget-object v13, Lcom/samsung/android/media/MotionPanoramaConverter$3;->$SwitchMap$com$samsung$android$media$MotionPanoramaConverter$ENCODER:[I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v19, v2

    :try_start_2
    iget-object v2, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    invoke-virtual {v2}, Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;->ordinal()I

    move-result v2

    aget v2, v13, v2

    packed-switch v2, :pswitch_data_1

    goto :goto_4

    :pswitch_3
    invoke-virtual {v7, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->encode([B)V

    goto :goto_4

    :pswitch_4
    goto :goto_4

    :pswitch_5
    invoke-virtual {v4, v0}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->EncodeFrame([B)I

    nop

    :goto_4
    add-int/lit8 v8, v8, 0x1

    const-string v2, "MotionPanoramaConverter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    const-string/jumbo v0, "share EncodeFrame done : "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ret value ="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object/from16 v2, v19

    goto :goto_3

    :cond_2
    move-object/from16 v19, v2

    iget-wide v2, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v17

    add-long v2, v2, v21

    iput-wide v2, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_5
    move-object/from16 v23, v9

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v23, v9

    goto/16 :goto_8

    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v23, v9

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v23, v9

    goto/16 :goto_8

    :cond_4
    move/from16 v16, v0

    move-object/from16 v19, v2

    const/4 v13, 0x3

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v11, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget v13, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v0, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    invoke-static {v11, v12, v13, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/util/JniUtil;->swABGR8888ToNV12(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/samsung/android/media/MotionPanoramaConverter$3;->$SwitchMap$com$samsung$android$media$MotionPanoramaConverter$ENCODER:[I

    iget-object v13, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    invoke-virtual {v13}, Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;->ordinal()I

    move-result v13

    aget v0, v0, v13
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    packed-switch v0, :pswitch_data_2

    goto :goto_6

    :pswitch_6
    :try_start_4
    invoke-virtual {v7, v14}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->encode([B)V

    goto :goto_6

    :pswitch_7
    goto :goto_6

    :pswitch_8
    invoke-virtual {v4, v14}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->EncodeFrame([B)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    nop

    :goto_6
    :try_start_5
    iget-boolean v0, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->TWICE_ENCODING:Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v0, :cond_5

    :try_start_6
    array-length v0, v14

    new-array v0, v0, [B

    array-length v13, v14

    const/4 v6, 0x0

    invoke-static {v14, v6, v0, v6, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    :try_start_7
    const-string v0, "MotionPanoramaConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "share EncodeFrame done : "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "ret value ="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    move/from16 v24, v8

    move-object/from16 v23, v9

    :try_start_8
    iget-wide v8, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v2

    add-long v8, v8, v17

    iput-wide v8, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2

    nop

    move/from16 v0, v16

    move-object/from16 v2, v19

    move-object/from16 v9, v23

    move/from16 v8, v24

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    const/4 v13, 0x3

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move/from16 v8, v24

    goto :goto_8

    :catch_3
    move-exception v0

    move/from16 v24, v8

    move-object/from16 v23, v9

    goto :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v23, v9

    goto :goto_8

    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v23, v9

    :goto_7
    goto :goto_9

    :catch_5
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v23, v9

    :goto_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/samsung/android/media/MotionPanoramaConverter$3;->$SwitchMap$com$samsung$android$media$MotionPanoramaConverter$ENCODER:[I

    iget-object v6, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoder:Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;

    invoke-virtual {v6}, Lcom/samsung/android/media/MotionPanoramaConverter$ENCODER;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_3

    goto :goto_a

    :pswitch_9
    invoke-virtual {v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->deinit()V

    goto :goto_a

    :pswitch_a
    goto :goto_a

    :pswitch_b
    invoke-virtual {v4}, Lcom/sec/android/app/interactiveshot/jni/MP4Writer;->DeInitMP4Engine()I

    nop

    :goto_a
    move-object/from16 v25, v7

    iget-wide v6, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v2

    add-long/2addr v6, v15

    iput-wide v6, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    const-string v0, "MotionPanoramaConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encodeMp4 completed ret value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/media/MotionPanoramaConverter;
    .locals 2

    const-class v0, Lcom/samsung/android/media/MotionPanoramaConverter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mInstance:Lcom/samsung/android/media/MotionPanoramaConverter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/media/MotionPanoramaConverter;

    invoke-direct {v1}, Lcom/samsung/android/media/MotionPanoramaConverter;-><init>()V

    sput-object v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mInstance:Lcom/samsung/android/media/MotionPanoramaConverter;

    :cond_0
    sget-object v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mInstance:Lcom/samsung/android/media/MotionPanoramaConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private processFrame(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "MotionPanoramaConverter"

    const-string/jumbo v3, "processFrame entry"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    iget v6, v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    iget v7, v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    iget v8, v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    iget v9, v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    iget v10, v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    iget v11, v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    sget v12, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v13, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->transformRotation()I

    move-result v15

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v5 .. v16}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->offscreenInitialize(Landroid/content/Context;IIIIIIIIIIZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    sub-long/2addr v3, v5

    iput-wide v3, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    const-string v0, "MotionPanoramaConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gl init time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v3, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    mul-int/2addr v0, v3

    const/4 v3, 0x4

    mul-int/2addr v0, v3

    filled-new-array {v3, v0}, [I

    move-result-object v0

    const-class v4, B

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [[B

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v7, v6, [B

    move v8, v5

    move v5, v0

    :goto_0
    :try_start_0
    iget-boolean v0, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->bStopRequested:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecoderGLQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v9, v0

    if-ne v9, v6, :cond_0

    iget-object v3, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v7}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v11, v5, 0x1

    :try_start_1
    aget-object v5, v4, v5

    if-ne v11, v3, :cond_1

    const/4 v11, 0x0

    :cond_1
    iget-object v12, v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mSRCMatrix:[[F
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v13, v8, 0x1

    :try_start_2
    aget-object v8, v12, v8

    invoke-static {v0, v5, v8}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->offscreenTransformFrame([B[B[F)V

    iget-object v8, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLEncoderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8, v5}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    iget-wide v14, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v9

    add-long v14, v14, v16

    iput-wide v14, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    move v5, v11

    move v8, v13

    goto :goto_0

    :catch_0
    move-exception v0

    move v5, v11

    move v8, v13

    goto :goto_2

    :catch_1
    move-exception v0

    move v5, v11

    goto :goto_2

    :cond_2
    :goto_1
    goto :goto_3

    :catch_2
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->offscreenFinalize()V

    iget-wide v11, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v9

    add-long/2addr v11, v13

    iput-wide v11, v1, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    const-string v0, "MotionPanoramaConverter"

    const-string/jumbo v3, "processFrame completed"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopShare()V
    .locals 3

    const-string v0, "MotionPanoramaConverter"

    const-string/jumbo v1, "stopShare entry"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->bStopRequested:Z

    iget-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mOutSharePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mOutSharePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "MotionPanoramaConverter"

    const-string/jumbo v1, "stopShare exit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized convertToMP4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mOutSharePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->bStopRequested:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mTotalTime:J

    const-string v1, "MotionPanoramaConverter"

    const-string v2, "Internal version = 1.5"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MotionPanoramaConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "share entry file to be shared: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " output file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->getInstance()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->init(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v5, "MotionPanoramaConverter"

    const-string v6, "SEF init fails"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->printInfo()V

    const-string v5, "MotionPanoramaConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "share offscreenInitialize width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cropx: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cropy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cropWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cropHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " orientation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " captureMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->transformRotation()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    sput v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    iget v5, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    sput v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    iget v5, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    const/16 v6, 0x10e

    const/16 v7, 0x5a

    if-eq v5, v7, :cond_2

    iget v5, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    if-ne v5, v6, :cond_3

    :cond_2
    sget v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v8, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    sput v8, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sput v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    iput-wide v8, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mSEFTime:J

    invoke-virtual {v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->printInfo()V

    const-string v5, "MotionPanoramaConverter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "share offscreenInitialize width: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " height: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cropx: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cropy: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cropWidth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cropHeight: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mCropHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " orientation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " captureMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->transformRotation()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/Thread;

    new-instance v8, Lcom/samsung/android/media/MotionPanoramaConverter$1;

    invoke-direct {v8, p0, p2, v3}, Lcom/samsung/android/media/MotionPanoramaConverter$1;-><init>(Lcom/samsung/android/media/MotionPanoramaConverter;Ljava/lang/String;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V

    invoke-direct {v5, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    iget-object v5, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    new-instance v5, Ljava/lang/Thread;

    new-instance v8, Lcom/samsung/android/media/MotionPanoramaConverter$2;

    invoke-direct {v8, p0, v3}, Lcom/samsung/android/media/MotionPanoramaConverter$2;-><init>(Lcom/samsung/android/media/MotionPanoramaConverter;Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V

    invoke-direct {v5, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    iget-object v5, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGLThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    invoke-direct {p0, v3}, Lcom/samsung/android/media/MotionPanoramaConverter;->decodeMp4(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncoderThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_5
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mIsEncoderInit:Z

    iget-object v5, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    if-eqz v5, :cond_5

    new-instance v5, Ljava/io/File;

    iget-object v8, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mVideoPath:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_5
    invoke-static {}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->freeInstance()V

    iget v5, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    if-eq v5, v7, :cond_6

    iget v5, v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/MotionPanoramaInfo;->mOrientation:I

    if-ne v5, v6, :cond_7

    :cond_6
    sget v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sget v6, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    sput v6, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_WIDTH:I

    sput v5, Lcom/samsung/android/media/MotionPanoramaConverter;->TARGET_ENCODE_HEIGHT:I

    :cond_7
    const-string v5, "MotionPanoramaConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "share exit Total Time: mTotalTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mTotalTime:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " encode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mEncodeTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " decode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mDecodeTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " opengl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mGlTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " sef: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/samsung/android/media/MotionPanoramaConverter;->mSEFTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

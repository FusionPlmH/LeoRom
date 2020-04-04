.class public Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
.super Ljava/lang/Object;
.source "SemCameraCaptureProcessor.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessRunnable;,
        Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;,
        Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;,
        Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;,
        Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;,
        Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;,
        Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;,
        Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;,
        Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback;,
        Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$SingleCaptureCallback;
    }
.end annotation


# static fields
.field private static final CAPTURE_MODE_CAPTURE_BURST:I = 0xf03

.field private static final CAPTURE_MODE_CAPTURE_SINGLE:I = 0xf02

.field private static final CAPTURE_MODE_CAPTURE_SINGLE_LTM:I = 0xf04

.field private static final CONFIGURE_STATE_INVALID:I = -0x1

.field private static final CONFIGURE_STATE_SESSION_CONFIG:I = 0x2

.field private static final CONFIGURE_STATE_STATECB:I = 0x1

.field private static final CONFIGURE_STATE_VALUE_INVALID:Ljava/lang/String; = "CONFIGURED_STATE_INVALID"

.field private static final CONFIGURE_STATE_VALUE_SESSION_CONFIG:Ljava/lang/String; = "CONFIGURED_SESSION_CONFIG"

.field private static final CONFIGURE_STATE_VALUE_STATECB:Ljava/lang/String; = "CONFIGURED_STATE_CB"

.field private static final INFO_SAMSUNG_SDK:Ljava/lang/String; = "samsungsdk"

.field public static final PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_CONFIGURED:I = 0x4

.field private static final STATE_CONFIGURING:I = 0x3

.field private static final STATE_IDLE:I = 0x1

.field private static final STATE_INITIALIZED:I = 0x2

.field private static final STATE_PROCESS:I = 0x5

.field private static final STATE_VALUE_CONFIGURED:Ljava/lang/String; = "CONFIGURED"

.field private static final STATE_VALUE_CONFIGURING:Ljava/lang/String; = "CONFIGURING"

.field private static final STATE_VALUE_IDLE:Ljava/lang/String; = "IDLE"

.field private static final STATE_VALUE_INITIALIZED:Ljava/lang/String; = "INITIALIZED"

.field private static final STATE_VALUE_PROCESS:Ljava/lang/String; = "PROCESS"

.field private static final TAG:Ljava/lang/String;

.field private static final sConfigureStateValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStateValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppCaptureHandler:Landroid/os/Handler;

.field private mAppDeviceStateHandler:Landroid/os/Handler;

.field private mAppSessionConfigHandler:Landroid/os/Handler;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraID:Ljava/lang/String;

.field private mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCaptureMode:I

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureStartedCount:I

.field private mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mConfigureState:I

.field private mContext:Landroid/content/Context;

.field private mDynamicShotCondition:I

.field private mDynamicShotExtraInfo:I

.field private mDynamicShotProcessingMode:I

.field private mIsCaptureFailed:Z

.field private mJpegReader:Landroid/media/ImageReader;

.field private mMultiProcessingStarted:Z

.field private mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mOnYuvImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mOrientation:I

.field private mParametersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mPictureSize:Landroid/util/Size;

.field private mPreviewDynamicShotInfo:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;

.field private mProcessHandler:Landroid/os/Handler;

.field private mProcessThread:Landroid/os/HandlerThread;

.field private mProcessorEventCallback:Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;

.field private mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mSDKCaptureCallback:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

.field private mState:I

.field private mTimestampToPictureDataMappingTable:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;",
            ">;"
        }
    .end annotation
.end field

.field private mYuvReader:Landroid/media/ImageReader;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sStateValues:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sStateValues:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "IDLE"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sStateValues:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "INITIALIZED"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sStateValues:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PROCESS"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sStateValues:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CONFIGURED"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sStateValues:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CONFIGURING"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sConfigureStateValues:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sConfigureStateValues:Ljava/util/HashMap;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CONFIGURED_STATE_INVALID"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sConfigureStateValues:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "CONFIGURED_STATE_CB"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sConfigureStateValues:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CONFIGURED_SESSION_CONFIG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    const-string v1, "beauty_parameter"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mState:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mConfigureState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraID:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPictureSize:Landroid/util/Size;

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotCondition:I

    iput v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotExtraInfo:I

    iput v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotProcessingMode:I

    iput v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureStartedCount:I

    iput-boolean v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mIsCaptureFailed:Z

    iput-boolean v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mMultiProcessingStarted:Z

    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mTimestampToPictureDataMappingTable:Ljava/util/concurrent/ConcurrentNavigableMap;

    new-instance v2, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)V

    iput-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v2, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$3;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)V

    iput-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mOnYuvImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v2, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)V

    iput-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorEventCallback:Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->assertInitParams(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;)V

    iget v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mState:I

    if-eq v2, v0, :cond_0

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot Initialize. Inavlid state!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraID:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPictureSize:Landroid/util/Size;

    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$1;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->startBackgroundThread()V

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/16 v2, 0x100

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Landroid/media/ImageReader;

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/16 v2, 0x23

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Landroid/media/ImageReader;

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mOnYuvImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    invoke-static {}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->getInstance()Lcom/samsung/android/camerasdkservice/MultiProcessManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p3, p2}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->initialize(Landroid/content/Context;Landroid/util/Size;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->getInstance()Lcom/samsung/android/camerasdkservice/MultiProcessManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorEventCallback:Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->setListener(Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;)V

    iput v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mState:I

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    const-string v1, "SemCameraCaptureProcessor: init X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mTimestampToPictureDataMappingTable:Ljava/util/concurrent/ConcurrentNavigableMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/hardware/camera2/CameraDevice;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mAppDeviceStateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getByteBufferfromJPEGImage(Landroid/media/Image;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mMultiProcessingStarted:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->checkCaptureFailure()V

    return-void
.end method

.method static synthetic access$2102(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mIsCaptureFailed:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureStartedCount:I

    return v0
.end method

.method static synthetic access$2208(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureStartedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureStartedCount:I

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotCondition:I

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->processData(Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mState:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mAppCaptureHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSDKCaptureCallback:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    return-object v0
.end method

.method private assertCaptureParams(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;Landroid/os/Handler;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capturecallback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dynamicShotInfo cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertInitParams(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemCameraCaptureProcessor: context - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pictureSize - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cameraId unsupported by SDK"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported Picture Size found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    return-void

    :cond_4
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot Initialize. Inavlid state! :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called in invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pictureSize cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private captureBurstPicture(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    const-string v1, "captureBurstPicture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotCondition:I

    iget v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotExtraInfo:I

    ushr-int/lit8 v4, v2, 0x10

    const v5, 0xffff

    and-int/2addr v5, v2

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureStartedCount:I

    iput-boolean v6, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mIsCaptureFailed:Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    iget-object v9, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v9, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v9, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v9, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v9, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, v8}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->setFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;

    invoke-static {v10}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->access$200(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v11

    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne v11, v12, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v10}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->access$200(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v11

    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne v11, v12, :cond_2

    invoke-static {v10}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->access$300(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mOrientation:I

    :cond_2
    invoke-static {v10}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->access$200(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v11

    invoke-static {v10}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->access$300(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Rational;

    invoke-virtual {v9}, Landroid/util/Rational;->getDenominator()I

    move-result v10

    invoke-virtual {v9}, Landroid/util/Rational;->getNumerator()I

    move-result v11

    div-int/2addr v10, v11

    sget-object v11, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "captureBurstPicture - dynamicShotMode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", dynamicShotCnt: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v6

    :goto_1
    if-ge v11, v5, :cond_7

    const/16 v12, 0x1e

    if-eq v4, v12, :cond_5

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v12, "dynamicShotConditionForMultiPicture is invalid - wrong shot mode"

    invoke-direct {v6, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v13, Lcom/samsung/android/sep/camera/vendor/SemCameraSdkConstants;->MF_HDR_EV_COMPENSATION_PRESET:[I

    array-length v13, v13

    sub-int/2addr v13, v0

    if-ge v13, v11, :cond_4

    move v13, v6

    goto :goto_2

    :cond_4
    sget-object v13, Lcom/samsung/android/sep/camera/vendor/SemCameraSdkConstants;->MF_HDR_EV_COMPENSATION_PRESET:[I

    aget v13, v13, v11

    :goto_2
    mul-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_1
    goto :goto_4

    :cond_5
    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v13, Lcom/samsung/android/sep/camera/vendor/SemCameraSdkConstants;->LL_HDR_EV_COMPENSATION_PRESET:[I

    array-length v13, v13

    sub-int/2addr v13, v0

    if-ge v13, v11, :cond_6

    move v13, v6

    goto :goto_3

    :cond_6
    sget-object v13, Lcom/samsung/android/sep/camera/vendor/SemCameraSdkConstants;->LL_HDR_EV_COMPENSATION_PRESET:[I

    aget v13, v13, v11

    :goto_3
    mul-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    nop

    :goto_4
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v11, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$1;)V

    iget-object v12, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v11, v12}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const/16 v6, 0xf03

    iput v6, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureMode:I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :cond_8
    :goto_5
    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "captureBurstPicture Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSDKCaptureCallback:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSDKCaptureCallback:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;->onError(I)V

    :cond_9
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private captureLTMPicture(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    const-string v1, "captureLTMPicture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;

    invoke-static {v3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->access$200(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne v4, v5, :cond_1

    invoke-static {v3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->access$300(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mOrientation:I

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->access$200(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->access$300(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotCondition:I

    iget v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotExtraInfo:I

    sget-object v4, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->setFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$1;)V

    iget-object v7, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const/16 v4, 0xf04

    iput v4, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureMode:I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureLTMPicture Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private captureStillPicture(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    const-string v1, "captureStillPicture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;

    invoke-static {v3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->access$200(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne v4, v5, :cond_1

    invoke-static {v3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->access$300(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mOrientation:I

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->access$200(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->access$300(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotCondition:I

    iget v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotExtraInfo:I

    sget-object v4, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->setFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$SingleCaptureCallback;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$SingleCaptureCallback;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$1;)V

    iget-object v7, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const/16 v4, 0xf02

    iput v4, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureMode:I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureStillPicture Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private checkCaptureFailure()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mIsCaptureFailed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mAppCaptureHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mAppCaptureHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$5;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSDKCaptureCallback:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSDKCaptureCallback:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;->onError(I)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mIsCaptureFailed:Z

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->moveToConfiguredState()V

    :cond_2
    return-void
.end method

.method private getByteBufferfromJPEGImage(Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getConfigState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mConfigureState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getConfigureStateValue()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sConfigureStateValues:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mConfigureState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getStateValue()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sStateValues:Ljava/util/HashMap;

    iget v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getStateValue(I)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sStateValues:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private moveToConfiguredState()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mTimestampToPictureDataMappingTable:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mState:I

    return-void
.end method

.method private declared-synchronized processData(Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mMultiProcessingStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mMultiProcessingStarted:Z

    invoke-static {}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->getInstance()Lcom/samsung/android/camerasdkservice/MultiProcessManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPreviewDynamicShotInfo:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->prepareProcess(Landroid/hardware/camera2/CaptureResult;I)V

    :cond_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->getInstance()Lcom/samsung/android/camerasdkservice/MultiProcessManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;->getCaptureResult()Lcom/samsung/android/camerasdkservice/CaptureResultConfig;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;->getImage()Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->process(Lcom/samsung/android/camerasdkservice/CaptureResultConfig;Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setConfigureState(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mState:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mState:I

    iput p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mConfigureState:I

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configuring state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getStateValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getStateValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getConfigureStateValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v4, v3, :cond_2

    aget v7, v0, v4

    if-ne v7, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    if-ne v7, v6, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "processBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessHandler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public buildCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;
    .locals 3

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getConfigState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPreparePreviewBuilder E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->setFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mState:I

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot buildCaptureRequest. Invalid state! :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Configuring State"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getConfigureStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildCaptureRequest Called in invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "builder cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public capture(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;Landroid/os/Handler;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->assertCaptureParams(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;Landroid/os/Handler;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mMultiProcessingStarted:Z

    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPreviewDynamicShotInfo:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSDKCaptureCallback:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    iput-object p4, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mAppCaptureHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->getDynamicShotCondition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotCondition:I

    invoke-virtual {p2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->getDynamicShotExtraInfo()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotExtraInfo:I

    invoke-virtual {p2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->getProcessingMode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotProcessingMode:I

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPreviewDynamicShotInfo:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;->access$100(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;)I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    iget v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotExtraInfo:I

    if-eq v2, v1, :cond_0

    invoke-direct {p0, p5}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->captureStillPicture(Ljava/util/List;)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    iget v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotExtraInfo:I

    if-ne v2, v1, :cond_1

    invoke-direct {p0, p5}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->captureLTMPicture(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p5}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->captureStillPicture(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, p5}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->captureBurstPicture(Ljava/util/List;)V

    :goto_1
    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mState:I

    return-void

    :cond_4
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot Capture. Inavlid state! :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture Called in invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    const-string v1, "close "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mState:I

    invoke-static {}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->getInstance()Lcom/samsung/android/camerasdkservice/MultiProcessManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->deInitialize()V

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->stopBackgroundThread()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mOnYuvImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPictureSize:Landroid/util/Size;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPreviewDynamicShotInfo:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorEventCallback:Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSDKCaptureCallback:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mAppCaptureHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mAppDeviceStateHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mAppSessionConfigHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Landroid/media/ImageReader;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Landroid/media/ImageReader;

    :cond_1
    return-void
.end method

.method public createSessionConfiguration(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/params/SessionConfiguration;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/hardware/camera2/params/SessionConfiguration;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getConfigState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iput-object p3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mAppSessionConfigHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/hardware/camera2/params/SessionConfiguration;

    new-instance v2, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$1;

    invoke-direct {v2, p0, p3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$1;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Landroid/os/Handler;)V

    invoke-direct {v1, v5, v0, v2, p2}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->setConfigureState(I)V

    sget-object v2, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  createSessionConfiguration. recieved outputConfigurations "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  return outputConfigs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "statecallback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot createSessionConfiguration. Invalid state! :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Configuring State"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getConfigureStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSessionConfiguration Called in invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createStateCallback(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 3

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  createDeviceStateCallback. recieved stateCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  return mCameraStateCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSDKCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mAppDeviceStateHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->setConfigureState(I)V

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot createDeviceStateCallback. Invalid state! :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDeviceStateCallback Called in invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAvailableParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mParametersList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mParametersList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mParametersList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mParametersList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorParameter(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    return-object v1
.end method

.method public setProcessorParameter(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->getInstance()Lcom/samsung/android/camerasdkservice/MultiProcessManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camerasdkservice/ProcessParameters;

    sget-object v2, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    const-class v4, Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/camerasdkservice/ProcessParameters;-><init>(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->setProcessorParameter(Lcom/samsung/android/camerasdkservice/ProcessParameters;)V

    :cond_0
    return-void
.end method

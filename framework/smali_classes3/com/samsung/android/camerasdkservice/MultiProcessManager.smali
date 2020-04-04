.class public Lcom/samsung/android/camerasdkservice/MultiProcessManager;
.super Ljava/lang/Object;
.source "MultiProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;
    }
.end annotation


# static fields
.field static final CAMERASDK_SERVICE:Ljava/lang/String; = "samsung.camerasdkservice"

.field static final CAMERA_SDK_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.camerasdkservice.CameraService"

.field static final CAMERA_SDK_SERVIC_PACKAGE:Ljava/lang/String; = "com.samsung.android.camerasdkservice"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/camerasdkservice/MultiProcessManager;


# instance fields
.field private mCallback:Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;

.field private mContext:Landroid/content/Context;

.field mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

.field private mServiceCb:Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static YUV48ToNV21(Landroid/media/Image;)[B
    .locals 20

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    mul-int v4, v1, v2

    const/16 v5, 0x23

    invoke-static {v5}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v6

    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x8

    new-array v4, v4, [B

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    new-array v7, v7, [B

    move v8, v0

    move v0, v6

    :goto_0
    array-length v9, v3

    if-ge v0, v9, :cond_a

    aget-object v9, v3, v0

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    aget-object v10, v3, v0

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    aget-object v11, v3, v0

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    if-nez v0, :cond_0

    move v12, v1

    goto :goto_1

    :cond_0
    div-int/lit8 v12, v1, 0x2

    :goto_1
    if-nez v0, :cond_1

    move v13, v2

    goto :goto_2

    :cond_1
    div-int/lit8 v13, v2, 0x2

    :goto_2
    if-nez v0, :cond_2

    move v14, v6

    goto :goto_3

    :cond_2
    move v14, v8

    :goto_3
    move v15, v8

    move v8, v6

    :goto_4
    if-ge v8, v13, :cond_9

    invoke-static {v5}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v16

    div-int/lit8 v5, v16, 0x8

    if-ne v11, v5, :cond_4

    mul-int v6, v12, v5

    invoke-virtual {v9, v4, v15, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move/from16 v17, v2

    sub-int v2, v13, v8

    move-object/from16 v18, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v10

    sub-int/2addr v2, v6

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_3
    add-int/2addr v15, v6

    goto :goto_8

    :cond_4
    move/from16 v17, v2

    move-object/from16 v18, v3

    sub-int v2, v13, v8

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    sub-int v2, v1, v11

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v7, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v9, v7, v3, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_5
    move v2, v3

    :goto_6
    if-ge v2, v12, :cond_8

    const/4 v6, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    mul-int/2addr v6, v2

    add-int/2addr v6, v3

    add-int/2addr v6, v14

    mul-int v16, v2, v11

    aget-byte v16, v7, v16

    aput-byte v16, v4, v6

    goto :goto_7

    :cond_6
    if-ne v0, v6, :cond_7

    mul-int/2addr v6, v2

    add-int/2addr v6, v14

    mul-int v16, v2, v11

    aget-byte v16, v7, v16

    aput-byte v16, v4, v6

    :cond_7
    :goto_7
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    goto :goto_6

    :cond_8
    array-length v2, v7

    add-int/2addr v14, v2

    :goto_8
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v17

    move-object/from16 v3, v18

    const/16 v5, 0x23

    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    move/from16 v17, v2

    move-object/from16 v18, v3

    add-int/lit8 v0, v0, 0x1

    move v8, v15

    const/16 v5, 0x23

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_a
    move/from16 v17, v2

    move-object/from16 v18, v3

    return-object v4
.end method

.method static synthetic access$000(Landroid/media/Image;)[B
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->YUV48ToNV21(Landroid/media/Image;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized ensureServiceConnected()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->startCameraSDKService()V

    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->waitForService()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/camerasdkservice/MultiProcessManager;
    .locals 2

    const-class v0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->sInstance:Lcom/samsung/android/camerasdkservice/MultiProcessManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/camerasdkservice/MultiProcessManager;

    invoke-direct {v1}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;-><init>()V

    sput-object v1, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->sInstance:Lcom/samsung/android/camerasdkservice/MultiProcessManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->sInstance:Lcom/samsung/android/camerasdkservice/MultiProcessManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private startCameraSDKService()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.camerasdkservice"

    const-string v3, "com.samsung.android.camerasdkservice.CameraService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->TAG:Ljava/lang/String;

    const-string v2, "Service is being installed. Ignore smart stay request."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private waitForService()V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    const-string/jumbo v1, "samsung.camerasdkservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->TAG:Ljava/lang/String;

    const-string v2, "Service connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    sget-object v1, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 v3, v0, 0x12c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public deInitialize()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    invoke-interface {v0}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->deInitialize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public initialize(Landroid/content/Context;Landroid/util/Size;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    invoke-direct {v1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->mServiceCb:Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    const-string v1, "ClientCallback"

    iget-object v2, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->mServiceCb:Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-interface {v1, v2, v3, p3, v0}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->initialize(IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public prepareProcess(Landroid/hardware/camera2/CaptureResult;I)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;

    invoke-direct {v0}, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getSequenceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;->setSequenceId(I)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;->setMetadataNative(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    invoke-interface {v1, v0, p2}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->prepareProcess(Lcom/samsung/android/camerasdkservice/CaptureResultConfig;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process(): RemoteException occurred! ............"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public process(Lcom/samsung/android/camerasdkservice/CaptureResultConfig;Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->TAG:Ljava/lang/String;

    const-string v1, "  process   ......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    const/4 v1, 0x0

    invoke-interface {v0, p2, p1, v1}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->process(Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;Lcom/samsung/android/camerasdkservice/CaptureResultConfig;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process(): RemoteException occurred!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->mServiceCb:Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->setListener(Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;)V

    return-void
.end method

.method public setProcessorParameter(Lcom/samsung/android/camerasdkservice/ProcessParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Lcom/samsung/android/camerasdkservice/ProcessParameters<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProcessorParameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/ProcessParameters;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->mService:Lcom/samsung/android/camerasdkservice/ICameraSDKService;

    invoke-interface {v0, p1}, Lcom/samsung/android/camerasdkservice/ICameraSDKService;->setProcessorParameter(Lcom/samsung/android/camerasdkservice/ProcessParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

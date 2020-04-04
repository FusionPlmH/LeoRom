.class public Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;
.super Ljava/lang/Object;
.source "MultiProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerasdkservice/MultiProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictureProcessedData"
.end annotation


# instance fields
.field private mCaptureResult:Lcom/samsung/android/camerasdkservice/CaptureResultConfig;

.field private mImage:Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;


# direct methods
.method public constructor <init>(Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;

    invoke-direct {v0}, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;->mCaptureResult:Lcom/samsung/android/camerasdkservice/CaptureResultConfig;

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;->mCaptureResult:Lcom/samsung/android/camerasdkservice/CaptureResultConfig;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getSequenceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;->setSequenceId(I)V

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;->mCaptureResult:Lcom/samsung/android/camerasdkservice/CaptureResultConfig;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;->setMetadataNative(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-static {p1}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->access$000(Landroid/media/Image;)[B

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byte length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;

    array-length v2, v0

    invoke-direct {v1, v2}, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;->mImage:Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;

    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;->mImage:Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->writeBytes([BIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/camerasdkservice/MultiProcessManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process(): IOException occurred!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCaptureResult()Lcom/samsung/android/camerasdkservice/CaptureResultConfig;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;->mCaptureResult:Lcom/samsung/android/camerasdkservice/CaptureResultConfig;

    return-object v0
.end method

.method public getImage()Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;->mImage:Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;

    return-object v0
.end method

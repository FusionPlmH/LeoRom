.class public Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;
.super Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub;
.source "SCameraServiceCallback.java"


# instance fields
.field private cb:Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    const-string v0, "ClientCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->cb:Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onProcessCompleted(Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    move-result v0

    new-array v0, v0, [B

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/SharedMemory;->getSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->readBytes([BIII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const-string v1, "ClientCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffersize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->cb:Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;

    invoke-interface {v1, v0}, Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;->onProcessCompleted([B)V

    return-void
.end method

.method public onProcessCompletedBuffer([B)V
    .locals 3

    const-string v0, "ClientCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCompleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->cb:Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;

    invoke-interface {v0, p1}, Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;->onProcessCompleted([B)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/SCameraServiceCallback;->cb:Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;

    return-void
.end method

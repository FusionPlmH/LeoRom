.class Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessRunnable;
.super Ljava/lang/Object;
.source "SemCameraCaptureProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessRunnable"
.end annotation


# instance fields
.field private mProcessedData:Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;

.field final synthetic this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessRunnable;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;

    invoke-static {p2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;->access$1800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;)Landroid/media/Image;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;->access$1100(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;)Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;-><init>(Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;)V

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessRunnable;->mProcessedData:Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;

    invoke-static {p2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;->access$1800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;)Landroid/media/Image;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessRunnable;->mProcessedData:Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessRunnable;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessRunnable;->mProcessedData:Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;

    invoke-static {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$2400(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessRunnable;->mProcessedData:Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;

    invoke-virtual {v0}, Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;->getImage()Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessRunnable;->mProcessedData:Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;

    invoke-virtual {v1}, Lcom/samsung/android/camerasdkservice/MultiProcessManager$PictureProcessedData;->getImage()Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->close()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

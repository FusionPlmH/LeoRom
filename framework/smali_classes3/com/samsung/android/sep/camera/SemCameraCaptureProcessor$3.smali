.class Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$3;
.super Ljava/lang/Object;
.source "SemCameraCaptureProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$3;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onImageAvailable: yuv imageReader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$3;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$3;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1000(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;->access$1802(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;Landroid/media/Image;)Landroid/media/Image;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$3;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1200(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessRunnable;

    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$3;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-direct {v3, v4, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessRunnable;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$3;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1000(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v2

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;->access$1100(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;)Landroid/hardware/camera2/CaptureResult;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

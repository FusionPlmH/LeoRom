.class Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SemCameraCaptureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurstCaptureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " BurstCaptureCalback Captured : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1000(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;

    if-eqz v0, :cond_0

    invoke-static {v0, p3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;->access$1102(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1200(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessRunnable;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessRunnable;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1000(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;->access$1100(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;)Landroid/hardware/camera2/CaptureResult;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "burst onCaptureFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$2102(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Z)Z

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$2000(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCaptureStarted: timestamp - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", frameNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$2208(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)I

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$2300(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$2200(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$700(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$700(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback$1;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$BurstCaptureCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;->onShutter()V

    :cond_1
    :goto_0
    return-void
.end method

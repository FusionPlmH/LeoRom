.class Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;
.super Ljava/lang/Object;
.source "SemCameraCaptureProcessor.java"

# interfaces
.implements Lcom/samsung/android/camerasdkservice/ISCameraServiceCbIntenal;


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

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISCameraServiceCbIntenal onError: errorCode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v2, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$602(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;I)I

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$602(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;I)I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$700(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$700(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4$2;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;->onError(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1902(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Z)Z

    return-void
.end method

.method public onProcessCompleted([B)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$602(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;I)I

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$700(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$700(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4$1;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;->onPictureAvailable(Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1902(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Z)Z

    return-void
.end method

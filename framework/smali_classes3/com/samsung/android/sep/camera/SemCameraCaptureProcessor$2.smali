.class Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;
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

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onImageAvailable Jpeg reader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1700(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Landroid/media/Image;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$602(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;I)I

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$700(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$700(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2$1;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;->onPictureAvailable(Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method

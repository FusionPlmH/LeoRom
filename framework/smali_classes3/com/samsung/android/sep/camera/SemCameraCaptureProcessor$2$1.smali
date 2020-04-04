.class Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2$1;
.super Ljava/lang/Object;
.source "SemCameraCaptureProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;->onImageAvailable(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;

.field final synthetic val$imageByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2$1;->val$imageByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$2$1;->val$imageByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;->onPictureAvailable(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

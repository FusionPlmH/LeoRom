.class Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4$1;
.super Ljava/lang/Object;
.source "SemCameraCaptureProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->onProcessCompleted([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;

.field final synthetic val$result:[B


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4$1;->val$result:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$4$1;->val$result:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;->onPictureAvailable(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

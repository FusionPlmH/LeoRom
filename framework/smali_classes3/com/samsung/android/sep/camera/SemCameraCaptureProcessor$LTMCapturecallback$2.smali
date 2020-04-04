.class Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback$2;
.super Ljava/lang/Object;
.source "SemCameraCaptureProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback$2;->this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback$2;->this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback$2;->this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$LTMCapturecallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;->onShutter()V

    :cond_0
    return-void
.end method

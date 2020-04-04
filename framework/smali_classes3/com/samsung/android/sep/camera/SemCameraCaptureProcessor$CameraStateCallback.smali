.class Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SemCameraCaptureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  onClosed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1500(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1500(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback$3;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1600(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1600(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  onDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1500(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1500(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback$2;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1600(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1600(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1500(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1500(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback$4;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;Landroid/hardware/camera2/CameraDevice;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1600(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1600(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6

    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  onOpened "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0, p1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1402(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setParameters"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1400(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "samsungsdk=true;"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    nop

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1500(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1500(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback$1;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1600(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1600(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    :cond_2
    :goto_2
    return-void
.end method

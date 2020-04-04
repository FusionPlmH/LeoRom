.class Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$1;
.super Ljava/lang/Object;
.source "SemCameraCaptureProcessor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->createSessionConfiguration(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/params/SessionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$1;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;
.super Ljava/lang/Object;
.source "SemCameraCaptureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureData"
.end annotation


# instance fields
.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mImage:Landroid/media/Image;

.field final synthetic this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;->mImage:Landroid/media/Image;

    iput-object p3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;)Landroid/hardware/camera2/CaptureResult;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;)Landroid/media/Image;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;->mImage:Landroid/media/Image;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;Landroid/media/Image;)Landroid/media/Image;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$PictureData;->mImage:Landroid/media/Image;

    return-object p1
.end method

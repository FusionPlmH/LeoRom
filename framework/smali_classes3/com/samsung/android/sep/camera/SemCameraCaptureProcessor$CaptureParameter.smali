.class public Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;
.super Ljava/lang/Object;
.source "SemCameraCaptureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureParameter"
.end annotation


# instance fields
.field private final mKey:Landroid/hardware/camera2/CaptureRequest$Key;

.field private final mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->mKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->mValue:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->mKey:Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.class public Lcom/samsung/android/camerasdkservice/CaptureResultConfig;
.super Ljava/lang/Object;
.source "CaptureResultConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/camerasdkservice/CaptureResultConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private metadataNative:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field private sequenceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camerasdkservice/CaptureResultConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/camerasdkservice/CaptureResultConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;->sequenceId:I

    const-class v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;->metadataNative:Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetadataNative()Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;->metadataNative:Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-object v0
.end method

.method public getSequenceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;->sequenceId:I

    return v0
.end method

.method public setMetadataNative(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;->metadataNative:Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-void
.end method

.method public setSequenceId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;->sequenceId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;->sequenceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/CaptureResultConfig;->metadataNative:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

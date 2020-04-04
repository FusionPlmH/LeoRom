.class public Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;
.super Ljava/lang/Object;
.source "SharedMemoryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mMemoryFileName:Ljava/lang/String;


# instance fields
.field private mMapping:Ljava/nio/ByteBuffer;

.field private mSharedMemory:Landroid/os/SharedMemory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CameraSDK"

    sput-object v0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mMemoryFileName:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    sget-object v0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mMemoryFileName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/os/SharedMemory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/SharedMemory;

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->deactivate()V

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    return-void
.end method

.method deactivate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSharedMemory()Landroid/os/SharedMemory;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    return-object v0
.end method

.method public readBytes([BIII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p4
.end method

.method public setSharedMemory(Landroid/os/SharedMemory;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    return-void
.end method

.method public writeBytes([BIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

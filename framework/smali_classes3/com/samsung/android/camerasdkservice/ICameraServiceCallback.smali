.class public interface abstract Lcom/samsung/android/camerasdkservice/ICameraServiceCallback;
.super Ljava/lang/Object;
.source "ICameraServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onProcessCompleted(Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onProcessCompletedBuffer([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

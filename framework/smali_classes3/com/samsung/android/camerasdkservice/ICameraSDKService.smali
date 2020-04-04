.class public interface abstract Lcom/samsung/android/camerasdkservice/ICameraSDKService;
.super Ljava/lang/Object;
.source "ICameraSDKService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerasdkservice/ICameraSDKService$Stub;
    }
.end annotation


# virtual methods
.method public abstract deInitialize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initialize(IILjava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract prepareProcess(Lcom/samsung/android/camerasdkservice/CaptureResultConfig;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract process(Lcom/samsung/android/camerasdkservice/SharedMemoryInfo;Lcom/samsung/android/camerasdkservice/CaptureResultConfig;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract processBuffer([BLcom/samsung/android/camerasdkservice/CaptureResultConfig;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setProcessorParameter(Lcom/samsung/android/camerasdkservice/ProcessParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

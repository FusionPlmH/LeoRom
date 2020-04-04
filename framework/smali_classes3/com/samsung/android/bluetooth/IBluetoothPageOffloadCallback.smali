.class public interface abstract Lcom/samsung/android/bluetooth/IBluetoothPageOffloadCallback;
.super Ljava/lang/Object;
.source "IBluetoothPageOffloadCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bluetooth/IBluetoothPageOffloadCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPageOffloadCallback(Landroid/bluetooth/BluetoothDevice;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Landroid/net/IUrspConnectionListener;
.super Ljava/lang/Object;
.source "IUrspConnectionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IUrspConnectionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDataConnectionStateChanged(IILandroid/net/Network;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

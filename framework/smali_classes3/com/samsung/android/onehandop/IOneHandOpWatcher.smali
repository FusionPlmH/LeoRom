.class public interface abstract Lcom/samsung/android/onehandop/IOneHandOpWatcher;
.super Ljava/lang/Object;
.source "IOneHandOpWatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/onehandop/IOneHandOpWatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInputFilterChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMagnificationSpecChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

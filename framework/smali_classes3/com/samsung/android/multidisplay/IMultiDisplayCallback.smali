.class public interface abstract Lcom/samsung/android/multidisplay/IMultiDisplayCallback;
.super Ljava/lang/Object;
.source "IMultiDisplayCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multidisplay/IMultiDisplayCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDisplayFocusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

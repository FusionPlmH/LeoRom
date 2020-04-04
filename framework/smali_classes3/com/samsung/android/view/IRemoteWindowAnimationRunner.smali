.class public interface abstract Lcom/samsung/android/view/IRemoteWindowAnimationRunner;
.super Ljava/lang/Object;
.source "IRemoteWindowAnimationRunner.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/view/IRemoteWindowAnimationRunner$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAnimationCancelled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAnimationStart(Lcom/samsung/android/view/RemoteWindowAnimationTarget;Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVisibilityChangedAnimationStart(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

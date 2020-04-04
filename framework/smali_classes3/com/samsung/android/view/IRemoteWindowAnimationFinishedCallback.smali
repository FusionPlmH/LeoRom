.class public interface abstract Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback;
.super Ljava/lang/Object;
.source "IRemoteWindowAnimationFinishedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/view/IRemoteWindowAnimationFinishedCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAnimationFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

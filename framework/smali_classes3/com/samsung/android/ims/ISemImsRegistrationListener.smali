.class public interface abstract Lcom/samsung/android/ims/ISemImsRegistrationListener;
.super Ljava/lang/Object;
.source "ISemImsRegistrationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/ISemImsRegistrationListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

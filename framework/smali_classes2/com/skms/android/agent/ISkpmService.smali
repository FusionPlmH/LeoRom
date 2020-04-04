.class public interface abstract Lcom/skms/android/agent/ISkpmService;
.super Ljava/lang/Object;
.source "ISkpmService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skms/android/agent/ISkpmService$Stub;
    }
.end annotation


# virtual methods
.method public abstract SkpmChangeOtaServer(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SkpmReadInjectedKeyUID(BBLjava/lang/String;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SkpmServiceCreateGetKeySession(BLjava/lang/String;[BB)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SkpmServiceInjectedKeyVerification(BBLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SkpmServiceKeyInjection(BBLjava/lang/String;[BB)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SkpmServiceReleaseGetKeySession()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

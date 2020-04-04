.class public interface abstract Lcom/samsung/android/service/activationteeservice/IActivationTeeService;
.super Ljava/lang/Object;
.source "IActivationTeeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/activationteeservice/IActivationTeeService$Stub;
    }
.end annotation


# virtual methods
.method public abstract generateCredentials2([B)Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract generateSessionCertificate2()Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract storeServerKey([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

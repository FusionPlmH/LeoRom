.class public interface abstract Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;
.super Ljava/lang/Object;
.source "IProxyAgent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ddar/proxy/IProxyAgent$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

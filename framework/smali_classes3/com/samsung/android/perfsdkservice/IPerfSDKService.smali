.class public interface abstract Lcom/samsung/android/perfsdkservice/IPerfSDKService;
.super Ljava/lang/Object;
.source "IPerfSDKService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAllowedPkgName(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initPerfSDK()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

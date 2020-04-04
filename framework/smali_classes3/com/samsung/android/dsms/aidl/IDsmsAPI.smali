.class public interface abstract Lcom/samsung/android/dsms/aidl/IDsmsAPI;
.super Ljava/lang/Object;
.source "IDsmsAPI.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/dsms/aidl/IDsmsAPI$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendLog(Ljava/lang/String;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

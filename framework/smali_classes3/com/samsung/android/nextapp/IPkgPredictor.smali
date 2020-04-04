.class public interface abstract Lcom/samsung/android/nextapp/IPkgPredictor;
.super Ljava/lang/Object;
.source "IPkgPredictor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nextapp/IPkgPredictor$Stub;
    }
.end annotation


# virtual methods
.method public abstract reportToNAP(Ljava/lang/String;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

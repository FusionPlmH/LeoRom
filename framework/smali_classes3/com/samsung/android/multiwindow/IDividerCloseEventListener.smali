.class public interface abstract Lcom/samsung/android/multiwindow/IDividerCloseEventListener;
.super Ljava/lang/Object;
.source "IDividerCloseEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IDividerCloseEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAlreadyRunningOnDockedStack()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

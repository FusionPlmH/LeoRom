.class public abstract Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub;
.super Landroid/os/Binder;
.source "ISuwScriptPlayerCallback.java"

# interfaces
.implements Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.sec.android.app.suwscriptplayer.ISuwScriptPlayerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    return-object v1

    :cond_1
    new-instance v1, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.sec.android.app.suwscriptplayer.ISuwScriptPlayerCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub;->onPlayCompleted()V

    return v1
.end method

.class public abstract Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;
.super Landroid/os/Binder;
.source "IVSScreenCallback.java"

# interfaces
.implements Lcom/samsung/android/virtualspace/IVSScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/virtualspace/IVSScreenCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.virtualspace.IVSScreenCallback"

.field static final TRANSACTION_onAppOrientationChanged:I = 0x7

.field static final TRANSACTION_onBoundsChanged:I = 0x4

.field static final TRANSACTION_onClosed:I = 0x6

.field static final TRANSACTION_onContentChanged:I = 0x2

.field static final TRANSACTION_onIMETargetChanged:I = 0x8

.field static final TRANSACTION_onLost:I = 0x3

.field static final TRANSACTION_onOrientationChanged:I = 0x1

.field static final TRANSACTION_onReady:I = 0x5

.field static final TRANSACTION_onTopTaskUpdated:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.virtualspace.IVSScreenCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreenCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.virtualspace.IVSScreenCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/virtualspace/IVSScreenCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/virtualspace/IVSScreenCallback;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.virtualspace.IVSScreenCallback"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onTopTaskUpdated(Lcom/samsung/android/virtualspace/IVSScreen;I)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onIMETargetChanged(Lcom/samsung/android/virtualspace/IVSScreen;Z)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onAppOrientationChanged(Lcom/samsung/android/virtualspace/IVSScreen;I)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onClosed(Lcom/samsung/android/virtualspace/IVSScreen;)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onReady(Lcom/samsung/android/virtualspace/IVSScreen;)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onBoundsChanged(Lcom/samsung/android/virtualspace/IVSScreen;Landroid/graphics/Rect;)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onLost(Lcom/samsung/android/virtualspace/IVSScreen;)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onContentChanged(Lcom/samsung/android/virtualspace/IVSScreen;Z)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onOrientationChanged(Lcom/samsung/android/virtualspace/IVSScreen;I)V

    return v2

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public abstract Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;
.super Landroid/os/Binder;
.source "IKnoxDesktopBarCallback.java"

# interfaces
.implements Lcom/samsung/android/knox/IKnoxDesktopBarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/IKnoxDesktopBarCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.IKnoxDesktopBarCallback"

.field static final TRANSACTION_notifyAuthenticated:I = 0x2

.field static final TRANSACTION_notifyBackKeyEvent:I = 0x1

.field static final TRANSACTION_notifyDismissKeyguard:I = 0x5

.field static final TRANSACTION_notifyFaceRunningStateChanged:I = 0x9

.field static final TRANSACTION_notifyIBRunningStateChanged:I = 0x7

.field static final TRANSACTION_notifyIrisRunningStateChanged:I = 0x8

.field static final TRANSACTION_notifyLockout:I = 0x6

.field static final TRANSACTION_notifySetMaximumFailedPasswordsForDisable:I = 0xb

.field static final TRANSACTION_notifyUpdateFailedUnlockAttemptForDeviceDisabled:I = 0xa

.field static final TRANSACTION_notifyWindowFocusChange:I = 0xc

.field static final TRANSACTION_samsung_account:I = 0x3

.field static final TRANSACTION_secure_uninstall:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.IKnoxDesktopBarCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IKnoxDesktopBarCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knox.IKnoxDesktopBarCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/IKnoxDesktopBarCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/IKnoxDesktopBarCallback;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.IKnoxDesktopBarCallback"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;->notifyWindowFocusChange(Z)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;->notifySetMaximumFailedPasswordsForDisable(I)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;->notifyUpdateFailedUnlockAttemptForDeviceDisabled(Z)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;->notifyFaceRunningStateChanged(Z)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;->notifyIrisRunningStateChanged(Z)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;->notifyIBRunningStateChanged(Z)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;->notifyLockout()V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;->notifyDismissKeyguard()V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;->secure_uninstall()V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;->samsung_account()V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;->notifyAuthenticated()V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;->notifyBackKeyEvent()V

    return v2

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
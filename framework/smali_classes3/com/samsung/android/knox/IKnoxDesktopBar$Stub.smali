.class public abstract Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;
.super Landroid/os/Binder;
.source "IKnoxDesktopBar.java"

# interfaces
.implements Lcom/samsung/android/knox/IKnoxDesktopBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/IKnoxDesktopBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/IKnoxDesktopBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.IKnoxDesktopBar"

.field static final TRANSACTION_doKeyguard:I = 0x6

.field static final TRANSACTION_notifyAuthenticated:I = 0x3

.field static final TRANSACTION_notifyBackKeyEvent:I = 0x2

.field static final TRANSACTION_notifyBiometricLockoutChanged:I = 0xe

.field static final TRANSACTION_notifyDismissKeyguard:I = 0x4

.field static final TRANSACTION_notifyFaceAuthenticationError:I = 0xd

.field static final TRANSACTION_notifyFaceAuthenticationRunningStateChange:I = 0x11

.field static final TRANSACTION_notifyIBAuthenticationError:I = 0xb

.field static final TRANSACTION_notifyIBRunningStateChange:I = 0xf

.field static final TRANSACTION_notifyIrisAuthenticationError:I = 0xc

.field static final TRANSACTION_notifyIrisRunningStateChange:I = 0x10

.field static final TRANSACTION_notifyLockout:I = 0x5

.field static final TRANSACTION_notifySetMaximumFailedPasswordsForDisable:I = 0x16

.field static final TRANSACTION_notifySimStateInfo:I = 0x14

.field static final TRANSACTION_notifySimStateInitInfo:I = 0x13

.field static final TRANSACTION_notifyUpdateFailedUnlockAttemptForDeviceDisabled:I = 0x15

.field static final TRANSACTION_notifyWindowFocusChange:I = 0x17

.field static final TRANSACTION_onScreenTurnedOff:I = 0xa

.field static final TRANSACTION_onScreenTurnedOn:I = 0x9

.field static final TRANSACTION_samsung_account:I = 0x7

.field static final TRANSACTION_secure_uninstall:I = 0x8

.field static final TRANSACTION_setDesktopBarCallback:I = 0x1

.field static final TRANSACTION_startKeyguardExitAnimationIfNeeded:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.IKnoxDesktopBar"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IKnoxDesktopBar;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knox.IKnoxDesktopBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/IKnoxDesktopBar;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/IKnoxDesktopBar;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.IKnoxDesktopBar"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v3, v2

    nop

    :cond_0
    move v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifyWindowFocusChange(Z)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifySetMaximumFailedPasswordsForDisable(I)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v3, v2

    nop

    :cond_1
    move v1, v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifyUpdateFailedUnlockAttemptForDeviceDisabled(Z)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifySimStateInfo(III)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v3, v2

    nop

    :cond_2
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifySimStateInitInfo(IIIZ)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->startKeyguardExitAnimationIfNeeded()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifyFaceAuthenticationRunningStateChange(I)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifyIrisRunningStateChange(I)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifyIBRunningStateChange(I)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v3, v2

    nop

    :cond_3
    move v1, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifyBiometricLockoutChanged(ZI)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_4
    nop

    :goto_0
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifyFaceAuthenticationError(ILjava/lang/CharSequence;)V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_5
    nop

    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifyIrisAuthenticationError(ILjava/lang/CharSequence;)V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_6
    nop

    :goto_2
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifyIBAuthenticationError(ILjava/lang/CharSequence;)V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->onScreenTurnedOff()V

    return v2

    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->onScreenTurnedOn()V

    return v2

    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->secure_uninstall()V

    return v2

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->samsung_account()V

    return v2

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->doKeyguard()V

    return v2

    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifyLockout()V

    return v2

    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifyDismissKeyguard()V

    return v2

    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifyAuthenticated()V

    return v2

    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->notifyBackKeyEvent()V

    return v2

    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/IKnoxDesktopBarCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IKnoxDesktopBarCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/IKnoxDesktopBar$Stub;->setDesktopBarCallback(Lcom/samsung/android/knox/IKnoxDesktopBarCallback;)V

    return v2

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

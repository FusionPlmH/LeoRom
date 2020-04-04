.class public abstract Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;
.super Landroid/os/Binder;
.source "ISystemUIAdapterCallback.java"

# interfaces
.implements Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

.field static final TRANSACTION_excludeExternalStorageForFailedPasswordsWipe:I = 0x6

.field static final TRANSACTION_setAirplaneModeAllowed:I = 0xc

.field static final TRANSACTION_setApplicationNameControlEnabled:I = 0x1b

.field static final TRANSACTION_setBluetoothAllowed:I = 0x12

.field static final TRANSACTION_setCameraAllowed:I = 0x10

.field static final TRANSACTION_setCellularDataAllowed:I = 0xd

.field static final TRANSACTION_setFaceRecognitionEvenCameraBlockedAllowed:I = 0x11

.field static final TRANSACTION_setGPSStateChangeAllowed:I = 0x17

.field static final TRANSACTION_setKioskModeEnabled:I = 0x3

.field static final TRANSACTION_setLocationProviderAllowed:I = 0x16

.field static final TRANSACTION_setLockedIccIds:I = 0x18

.field static final TRANSACTION_setLockscreenInvisibleOverlay:I = 0x19

.field static final TRANSACTION_setLockscreenWallpaper:I = 0x1a

.field static final TRANSACTION_setMaximumFailedPasswordsForDisable:I = 0x4

.field static final TRANSACTION_setMultifactorAuthEnabled:I = 0x8

.field static final TRANSACTION_setNFCAllowed:I = 0xe

.field static final TRANSACTION_setNFCStateChangeAllowed:I = 0x13

.field static final TRANSACTION_setNavigationBarHidden:I = 0x2

.field static final TRANSACTION_setPasswordLockDelay:I = 0x7

.field static final TRANSACTION_setPasswordVisibilityEnabled:I = 0x9

.field static final TRANSACTION_setPwdChangeRequested:I = 0x5

.field static final TRANSACTION_setSettingsChangeAllowed:I = 0xa

.field static final TRANSACTION_setStatusBarExpansionAllowed:I = 0xb

.field static final TRANSACTION_setStatusBarHidden:I = 0x1

.field static final TRANSACTION_setWifiAllowed:I = 0x15

.field static final TRANSACTION_setWifiStateChangeAllowed:I = 0x14

.field static final TRANSACTION_setWifiTetheringAllowed:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p0, p0, v0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    return-object v1

    :cond_1
    new-instance v1, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_17

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
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setApplicationNameControlEnabled(Z)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLockscreenWallpaper(Z)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLockscreenInvisibleOverlay(Z)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLockedIccIds([Ljava/lang/String;)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setGPSStateChangeAllowed(Z)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-virtual {p0, v3, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLocationProviderAllowed(Ljava/lang/String;Z)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    nop

    :cond_5
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setWifiAllowed(Z)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    nop

    :cond_6
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setWifiStateChangeAllowed(Z)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    nop

    :cond_7
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setNFCStateChangeAllowed(Z)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    move v1, v2

    nop

    :cond_8
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setBluetoothAllowed(Z)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    move v1, v2

    nop

    :cond_9
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setFaceRecognitionEvenCameraBlockedAllowed(Z)V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    move v1, v2

    nop

    :cond_a
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setCameraAllowed(Z)V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    move v1, v2

    nop

    :cond_b
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setWifiTetheringAllowed(Z)V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    move v1, v2

    nop

    :cond_c
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setNFCAllowed(Z)V

    return v2

    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    move v1, v2

    nop

    :cond_d
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setCellularDataAllowed(Z)V

    return v2

    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    move v1, v2

    nop

    :cond_e
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setAirplaneModeAllowed(Z)V

    return v2

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    move v1, v2

    nop

    :cond_f
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setStatusBarExpansionAllowed(Z)V

    return v2

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    move v1, v2

    nop

    :cond_10
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setSettingsChangeAllowed(Z)V

    return v2

    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    move v1, v2

    nop

    :cond_11
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setPasswordVisibilityEnabled(Z)V

    return v2

    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    move v1, v2

    nop

    :cond_12
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setMultifactorAuthEnabled(Z)V

    return v2

    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setPasswordLockDelay(I)V

    return v2

    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    move v1, v2

    nop

    :cond_13
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->excludeExternalStorageForFailedPasswordsWipe(Z)V

    return v2

    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setPwdChangeRequested(I)V

    return v2

    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setMaximumFailedPasswordsForDisable(I)V

    return v2

    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    move v1, v2

    nop

    :cond_14
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setKioskModeEnabled(Z)V

    return v2

    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    move v1, v2

    nop

    :cond_15
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setNavigationBarHidden(Z)V

    return v2

    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    move v1, v2

    nop

    :cond_16
    invoke-virtual {p0, v1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setStatusBarHidden(Z)V

    return v2

    :cond_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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

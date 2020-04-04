.class public Lcom/android/settings/bluetooth/BluetoothPairingController;
.super Ljava/lang/Object;
.source "BluetoothPairingController.java"


# instance fields
.field private mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceName:Ljava/lang/String;

.field private mIsAcceptPair:Z

.field private mPasskey:I

.field private mPasskeyFormatted:Ljava/lang/String;

.field private mType:I

.field private mUserInput:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsAcceptPair:Z

    invoke-static {p2}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const-string v2, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskey:I

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDeviceName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskey:I

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->formatKey(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsAcceptPair:Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find BluetoothDevice"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not obtain LocalBluetoothManager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private formatKey(I)Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%06d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%06d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 2

    const-string v0, "BTPairingController"

    const-string v1, "Pairing dialog accepted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "BTPairingController"

    const-string v1, "Incorrect pairing type received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public deviceEquals(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDeviceMaxPasskeyLength()I
    .locals 2

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x6

    return v0

    :cond_0
    :pswitch_1
    const/16 v0, 0x11

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVariantMessageId()I
    .locals 2

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const v0, 0x7f120377

    return v0

    :cond_0
    :pswitch_1
    const v0, 0x7f120379

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDialogType()I
    .locals 1

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_3
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getPairingContent()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->hasPairingContent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasPairingContent()Z
    .locals 2

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isDismissDialogWithAccept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsAcceptPair:Z

    return v0
.end method

.method public isPasskeyHasError()Z
    .locals 3

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskey:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPasskeyValid(Landroid/text/Editable;)Z
    .locals 5

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_3

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    nop

    :cond_3
    return v1
.end method

.method protected notifyDialogDisplayed()V
    .locals 2

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    const-string v0, "BTPairingController"

    const-string v1, "Pairing dialog canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    return-void
.end method

.method public onDialogNegativeClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    return-void
.end method

.method public onDialogPositiveClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDialogType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mUserInput:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onPair(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onPair(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsAcceptPair:Z

    return-void
.end method

.method protected updateUserInput(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mUserInput:Ljava/lang/String;

    return-void
.end method

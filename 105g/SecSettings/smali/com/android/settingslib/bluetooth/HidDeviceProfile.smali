.class public Lcom/android/settingslib/bluetooth/HidDeviceProfile;
.super Ljava/lang/Object;
.source "HidDeviceProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# instance fields
.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothHidDevice;


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->mService:Landroid/bluetooth/BluetoothHidDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->mService:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 3

    const-string v0, "HidDeviceProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->mService:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->mService:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->mService:Landroid/bluetooth/BluetoothHidDevice;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HidDeviceProfile"

    const-string v2, "Error cleaning up HID proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->mService:Landroid/bluetooth/BluetoothHidDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->mService:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHidDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->mService:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHidDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_misc_hid:I

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_profile_hid:I

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    return v1

    :cond_0
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    return v1

    :cond_1
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_hid_profile_summary_use_for:I

    return v1
.end method

.method public isAutoConnectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->mService:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "HID DEVICE"

    return-object v0
.end method

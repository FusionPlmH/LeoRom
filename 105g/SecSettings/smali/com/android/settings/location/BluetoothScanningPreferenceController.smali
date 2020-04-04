.class public Lcom/android/settings/location/BluetoothScanningPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BluetoothScanningPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bluetooth_always_scanning"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const-string v0, "bluetooth_always_scanning"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/location/BluetoothScanningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ble_scan_always_enabled"

    nop

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v1, 0x83

    const/16 v2, 0x1337

    move-object v3, p1

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/location/BluetoothScanningPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ble_scan_always_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/BluetoothScanningPreferenceController;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/BluetoothPolicy"

    const-string v5, "isBLEAllowed"

    invoke-static {v1, v4, v5, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

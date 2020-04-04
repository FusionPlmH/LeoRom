.class public Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BatteryInfoCapacityPreferenceController.java"

# interfaces
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

    const-string v0, "battery_capacity"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->supportBatteryCapacity()Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceBatteryCapacity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

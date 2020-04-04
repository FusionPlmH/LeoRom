.class public Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityTypicalDescPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BatteryInfoCapacityTypicalDescPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityTypicalDescPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityTypicalDescPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "battery_capacity_typical_desc"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityTypicalDescPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->supportBatteryCapacityTypicalSummary(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityTypicalDescPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityTypicalDescPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/batteryinfo/BatteryInfoCapacityTypicalDescPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceBatteryCapacityTypicalDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.class public Lcom/samsung/android/settings/deviceinfo/DiagnosticsAndUsagePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DiagnosticsAndUsagePreferenceController.java"

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

    const-string v0, "diagnostics_and_usage"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DiagnosticsAndUsagePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.ccr"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPackageLoaded(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SAMSUNG_CRASHREPORT_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

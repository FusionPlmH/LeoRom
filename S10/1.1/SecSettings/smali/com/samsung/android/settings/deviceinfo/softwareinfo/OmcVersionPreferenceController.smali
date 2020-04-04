.class public Lcom/samsung/android/settings/deviceinfo/softwareinfo/OmcVersionPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OmcVersionPreferenceController.java"

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

    const-string v0, "omc_version"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/OmcVersionPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.app.omcagent"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/OmcUtils;->instance:Lcom/samsung/android/settings/deviceinfo/softwareinfo/OmcUtils;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/OmcUtils;->isOMCVersionSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/OmcUtils;->instance:Lcom/samsung/android/settings/deviceinfo/softwareinfo/OmcUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/OmcVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/OmcUtils;->getOmcSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/OmcVersionPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1206d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

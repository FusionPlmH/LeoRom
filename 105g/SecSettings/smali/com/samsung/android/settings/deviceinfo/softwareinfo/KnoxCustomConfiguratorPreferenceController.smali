.class public Lcom/samsung/android/settings/deviceinfo/softwareinfo/KnoxCustomConfiguratorPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "KnoxCustomConfiguratorPreferenceController.java"

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

    const-string v0, "knox_custom_configurator"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/KnoxCustomConfiguratorPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.knox.kccagent"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/KnoxCustomConfiguratorPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.knox.kccagent"

    const-string v3, "com.sec.knox.kccc.agent.activities.KCCCSettings"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isActivityExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/KnoxCustomConfiguratorPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.knox.kccagent"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    move-object v1, v2

    const-string v2, "-DS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :cond_3
    :goto_2
    return v0
.end method

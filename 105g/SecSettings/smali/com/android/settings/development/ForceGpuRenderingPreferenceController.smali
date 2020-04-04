.class public Lcom/android/settings/development/ForceGpuRenderingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "ForceGpuRenderingPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final HARDWARE_UI_PROPERTY:Ljava/lang/String; = "persist.sys.ui.hw"


# instance fields
.field private final mGpuWatchPrefController:Lcom/samsung/android/settings/development/GpuWatchPreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/development/GpuWatchPreferenceController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;->mGpuWatchPrefController:Lcom/samsung/android/settings/development/GpuWatchPreferenceController;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "force_hw_ui"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const-string v0, "persist.sys.ui.hw"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    invoke-static {}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->isGpuWatchSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;->mGpuWatchPrefController:Lcom/samsung/android/settings/development/GpuWatchPreferenceController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;->mGpuWatchPrefController:Lcom/samsung/android/settings/development/GpuWatchPreferenceController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->getGpuWatchDiscoverTaps()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;->mGpuWatchPrefController:Lcom/samsung/android/settings/development/GpuWatchPreferenceController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->decreaseGpuWatchDiscoverTaps()V

    iget-object v1, p0, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;->mGpuWatchPrefController:Lcom/samsung/android/settings/development/GpuWatchPreferenceController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->getGpuWatchDiscoverTaps()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;->mGpuWatchPrefController:Lcom/samsung/android/settings/development/GpuWatchPreferenceController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/development/GpuWatchPreferenceController;->enableGpuWatchMenu()V

    :cond_1
    return v2
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    const-string v0, "persist.sys.ui.hw"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

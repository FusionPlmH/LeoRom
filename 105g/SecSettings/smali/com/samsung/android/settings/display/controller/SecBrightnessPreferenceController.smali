.class public Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "SecBrightnessPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "secbrightness"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "secbrightness"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "secbrightness"

    return-object v0
.end method

.method public getUriListRequiringObservation()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "display_outdoor_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->unRregisterBrightnessObserver()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_config_brightness"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setRestrictedBrightness(Z)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->registerBrightnessObserver()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessModeChanged()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->brightnessNotifyChange()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setInitFinish(Z)V

    return-void
.end method

.method public updatePreference(Landroid/net/Uri;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "display_outdoor_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setEnabled(Z)V

    return-void
.end method

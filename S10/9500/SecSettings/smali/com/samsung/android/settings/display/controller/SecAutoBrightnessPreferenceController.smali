.class public Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "SecAutoBrightnessPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "auto_brightness"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "secbrightness"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    const-string v0, "auto_brightness"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "auto_brightness"

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

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportLightSensor(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    const-string v0, "PrefControllerMixin"

    const-string v1, " onPreferenceChange"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSecPAC()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "brightness_user_touch"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v3

    const/16 v4, 0x64

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v1, v2, :cond_2

    const/16 v3, 0x27

    iget-object v5, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getSamsungNTTHomeDefaultBrightness(Landroid/content/Context;)[I

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.nttdocomo.android.dhome"

    const-string v8, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v5, :cond_0

    array-length v9, v5

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    aget v3, v5, v2

    :cond_0
    invoke-virtual {v6, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "screen_brightness"

    invoke-static {v4, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "brightness_pms_marker_screen"

    invoke-static {v9, v10, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v9, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "screen_brightness"

    invoke-static {v9, v10, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "brightness_pms_marker_screen"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    nop

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->hideHbmText()V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mSecBrightness:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->changeSeekbarColor(Z)V

    :cond_5
    const/16 v1, 0x1ce9

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return v2
.end method

.method public updatePreference(Landroid/net/Uri;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_config_brightness"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAutoBrightnessEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    nop

    :cond_2
    move v2, v3

    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportPersonalAutoBrightness()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const v4, 0x7f12136d

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const v4, 0x7f1201b1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    :cond_4
    :goto_0
    return-void
.end method

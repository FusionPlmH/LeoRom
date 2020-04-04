.class Lcom/samsung/android/settings/notification/SecZenModeCustomPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "SecZenModeCustomPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "custom"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-boolean v1, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SecZenModeDNDPriority"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange allowCustom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeCustomPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->setZenMode(I)V

    const/16 v1, 0xff4

    const/16 v3, 0x1009

    invoke-static {v1, v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return v2
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenModeCustomPreferenceController;->getZenMode()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecSoundModeRadioPreference;->setChecked(Z)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

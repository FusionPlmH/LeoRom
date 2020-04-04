.class public Lcom/samsung/android/settings/rcs/RcsSettings;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "RcsSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mIsDefaultSms:Z

.field private mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

.field private mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

.field mSwitchRcs:Z

.field private mWirelessSettings:Lcom/samsung/android/settings/WirelessSettings;

.field private phoneId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Lcom/samsung/android/settings/WirelessSettings;)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    const-class v0, Lcom/samsung/android/settings/rcs/RcsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->phoneId:I

    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/rcs/RcsUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->phoneId:I

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mWirelessSettings:Lcom/samsung/android/settings/WirelessSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "rcs_settings"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "rcs_settings_partial_branded"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string v1, "rcs_settings_partial_branded_cpr"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-void
.end method


# virtual methods
.method public checkMdmRcsStatus()Z
    .locals 9

    const-string v0, "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "false"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v7, "isRCSEnabled"

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->phoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Disabled RCS "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    move v8, v2

    :cond_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2

    :cond_2
    :goto_0
    return v8
.end method

.method public checkds()Z
    .locals 2

    const-string v0, "dsds"

    const-string v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public disableAllRcsSettingsPreference()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string v1, "disableAllRcsSettingsPreference: disable for all brand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method public enableRcs(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/rcs/RcsUtils;->enableRcs(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    nop

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    const-string v0, "com.samsung.android.messaging"

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSwitchRcs:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsSettings;->enableRcs(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mWirelessSettings:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/WirelessSettings;->callRcsDefaultSms()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsSettings;->enableRcs(Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string v2, "rcs_settings"

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string v2, "rcs_settings_partial_branded"

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    const-string v2, "rcs_settings_partial_branded_cpr"

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    :cond_4
    :goto_1
    return v1
.end method

.method public setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V
    .locals 5

    const-string v0, "com.samsung.android.messaging"

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->isEnableRcs()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettings;->checkMdmRcsStatus()Z

    move-result v1

    const v2, 0x7f1211dd

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mIsDefaultSms:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const v1, 0x7f121a13

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p1, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :goto_0
    return-void
.end method

.method public updateRcsSettingsVisibility()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->phoneId:I

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->isMasterSwitchVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string v2, "updateRcsSettingsVisibility: RCS is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DISABLE_ON_DS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettings;->checkds()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string v2, "updateRcsSettingsVisibility: RCS is disabled by DISABLE_ON_DS in others.xml"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsProfile()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string v3, "rcsprofile is empty."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsSettings;->disableAllRcsSettingsPreference()V

    goto/16 :goto_1

    :cond_2
    const-string v2, "joyn_cpr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "UP_1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "joyn_blackbird"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string v3, "updateRcsSettingsVisibility: update for Partial Branded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mRcsUtils:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-virtual {v2}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsFeatures()Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/rcs/RcsUtils$RcsFeatures;->isFullBranded()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string v3, "updateRcsSettingsVisibility: update for Full Branded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->TAG:Ljava/lang/String;

    const-string v3, "updateRcsSettingsVisibility: update for CPR"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferenceRcse:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mSettingsTreeParent:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBranded:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/rcs/RcsSettings;->mPreferencePartialBrandedForCPR:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/rcs/RcsSettings;->setSwitchStatus(Landroid/support/v14/preference/SecSwitchPreferenceScreen;)V

    :cond_6
    :goto_1
    return-void
.end method

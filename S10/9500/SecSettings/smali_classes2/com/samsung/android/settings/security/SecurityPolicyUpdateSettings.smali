.class public Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecurityPolicyUpdateSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;


# instance fields
.field private mAutoUpdatePref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mDownloadViaPref:Landroid/support/v7/preference/SecDropDownPreference;

.field private mLastCheckedDateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateNowPref:Landroid/support/v7/preference/SecPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->updateLastCheckedDate()V

    return-void
.end method

.method private checkSecurityPolicyUpdate()V
    .locals 2

    const-string v0, "SecurityPolicyUpdateSettings"

    const-string v1, "Security Policy Update Checked"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x119c

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.spdclient.intent.SECURITY_POLICY_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x11000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.samsung.android.spdclient"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getDownloadViaEntryString(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1216d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1216d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initAutoUpdatePref()V
    .locals 3

    const-string v0, "key_auto_update"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mAutoUpdatePref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "security_update_db"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mAutoUpdatePref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mAutoUpdatePref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mAutoUpdatePref:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v2, Lcom/samsung/android/settings/security/-$$Lambda$SecurityPolicyUpdateSettings$-1QiKLgqC7aB0Vywo127wLLRoEQ;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/security/-$$Lambda$SecurityPolicyUpdateSettings$-1QiKLgqC7aB0Vywo127wLLRoEQ;-><init>(Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initDownloadViaPref()V
    .locals 6

    const-string v0, "key_wifi_only"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mDownloadViaPref:Landroid/support/v7/preference/SecDropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mDownloadViaPref:Landroid/support/v7/preference/SecDropDownPreference;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getDownloadViaEntryString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getDownloadViaEntryString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mDownloadViaPref:Landroid/support/v7/preference/SecDropDownPreference;

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_wifi_only_db"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mDownloadViaPref:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecDropDownPreference;->setValueIndex(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mDownloadViaPref:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getDownloadViaEntryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mDownloadViaPref:Landroid/support/v7/preference/SecDropDownPreference;

    new-instance v2, Lcom/samsung/android/settings/security/-$$Lambda$SecurityPolicyUpdateSettings$bsckBRFSzepEvyN1KAG1sthi4x8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/security/-$$Lambda$SecurityPolicyUpdateSettings$bsckBRFSzepEvyN1KAG1sthi4x8;-><init>(Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initSecurityPolicyUpdateSettings()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f1500ee

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->initUpdateNowPref()V

    invoke-direct {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->initAutoUpdatePref()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "key_wifi_only"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->initDownloadViaPref()V

    :goto_0
    new-instance v1, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings$1;-><init>(Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mLastCheckedDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mLastCheckedDateChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.android.spdclient.intent.CHECKED_DATE_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initUpdateNowPref()V
    .locals 2

    const-string v0, "key_security_policy_update_now"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mUpdateNowPref:Landroid/support/v7/preference/SecPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mUpdateNowPref:Landroid/support/v7/preference/SecPreference;

    new-instance v1, Lcom/samsung/android/settings/security/-$$Lambda$SecurityPolicyUpdateSettings$3ock74XPWHCjKKaMxOVUXR2_zfM;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/security/-$$Lambda$SecurityPolicyUpdateSettings$3ock74XPWHCjKKaMxOVUXR2_zfM;-><init>(Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public static synthetic lambda$initAutoUpdatePref$1(Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "SecurityPolicyUpdateSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto Update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mAutoUpdatePref:Landroid/support/v14/preference/SecSwitchPreference;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "security_update_db"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.spdclient.intent.AUTO_UPDATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x11000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "changed_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.samsung.android.spdclient"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0x119d

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 v2, 0x0

    return v2
.end method

.method public static synthetic lambda$initDownloadViaPref$2(Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "SecurityPolicyUpdateSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wi-Fi only: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "use_wifi_only_db"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mDownloadViaPref:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecDropDownPreference;->setValueIndex(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mDownloadViaPref:Landroid/support/v7/preference/SecDropDownPreference;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getDownloadViaEntryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getMetricsCategory()I

    move-result v1

    int-to-long v2, v0

    const/16 v4, 0x119e

    invoke-static {v1, v4, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 v1, 0x0

    return v1
.end method

.method public static synthetic lambda$initUpdateNowPref$0(Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->checkSecurityPolicyUpdate()V

    const/4 v0, 0x0

    return v0
.end method

.method private updateLastCheckedDate()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mUpdateNowPref:Landroid/support/v7/preference/SecPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1216d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "SECURITY_POLICY_LAST_CHECKED_DATE"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "SecurityPolicyUpdateSettings"

    const-string v5, "SettingNotFoundException in updateLastCheckedDate"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-wide v3, v1

    :goto_0
    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1

    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f121641

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mUpdateNowPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x119b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SecurityPolicyUpdateSettings"

    const-string v1, "Security Policy Update"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->initSecurityPolicyUpdateSettings()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mLastCheckedDateChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mLastCheckedDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->mLastCheckedDateChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->updateLastCheckedDate()V

    return-void
.end method

.class public Lcom/samsung/android/settings/lockscreen/LockScreenSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/logging/status/StatusLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/LockScreenSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static mSmartLockSummary:Ljava/lang/String;


# instance fields
.field private informationCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private mClockStyle:Landroid/support/v7/preference/SecPreference;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field protected mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDlsSupported:Z

.field private mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mDynamicLockscreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFromCoverSetting:Z

.field private mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockType:Lcom/samsung/android/settings/widget/SecGearPreference;

.field private mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private mMagazineLockscreen:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

.field private mOtherLockscreenServices:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

.field private mProfileChallengeUserId:I

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSecure:Z

.field private mSecureProfile:Z

.field private mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSmartlock:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

.field private mUm:Landroid/os/UserManager;

.field protected sPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$7;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$7;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$8;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$8;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mFromCoverSetting:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDlsSupported:Z

    return-void
.end method

.method private ChangeSettingsAsLockScreenDisabled()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_clock_option"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dualclock_menu_settings"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_notifications_option"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_show_notifications"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void
.end method

.method private InitPreference(I)V
    .locals 6

    const-string v0, "LockScreenSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitPreference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sec_info_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string v0, "unlock_set_or_change"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecGearPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockType:Lcom/samsung/android/settings/widget/SecGearPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockType:Lcom/samsung/android/settings/widget/SecGearPreference;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateLockType(ILcom/samsung/android/settings/widget/SecGearPreference;ZZ)V

    const-string v2, "secured_lock_settigns"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v2, "lock_screen_menu_notifications"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateNotificationValue()V

    const-string v2, "lock_app_shortcut"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/Rune;->isDCMhome(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_1
    :goto_0
    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v4, 0xc

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_3
    const-string v3, "clock_style_pref"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->setClockStyleState()V

    :cond_4
    const-string v3, "lock_screen_dualclock"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateDualClock()V

    :cond_5
    const-string v3, "lock_screen_menu_owner_infomation"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateOwnerInfo()V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const v4, 0x7f12055e

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setTitle(I)V

    :cond_7
    const-string v3, "lock_screen_additional_info"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.samsung.android.app.aodservice"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    const v4, 0x7f1200bd

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    const v4, 0x7f1200bb

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_9
    :goto_2
    const-string v3, "dynamic_lock_screen"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDynamicLockscreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDynamicLockscreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateDynamicLockscreen()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDlsSupported:Z

    :cond_a
    const-string v3, "magazine_lockscreen"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mMagazineLockscreen:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mMagazineLockscreen:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateLockscreenMagazineSettings()V

    :cond_b
    const-string v3, "other_lock_screen_services"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOtherLockscreenServices:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOtherLockscreenServices:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateOtherLockscreenServices()V

    :cond_c
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    return v0
.end method

.method private addSmartLockPreference()V
    .locals 6

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/settings/security/trustagent/TrustAgentManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "trust_agent"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartlock:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartlock:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartlock:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iget-object v4, v2, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartlock:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iget-object v4, v2, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, v2, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartlock:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setIntent(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartlock:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iget-object v5, v2, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartlock:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/lockscreen/LockScreenSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mProfileChallengeUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSecure:Z

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mProfileChallengeUserId:I

    const/16 v4, -0x2710

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mProfileChallengeUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSecure:Z

    if-eqz v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSecureProfile:Z

    const v2, 0x7f1500d7

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->addPreferencesFromResource(I)V

    const-string v2, "unlock_set_or_change"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/settings/widget/SecGearPreference;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/settings/widget/SecGearPreference;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecGearPreference;->setOnGearClickListener(Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getLockType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->InitPreference(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockType:Lcom/samsung/android/settings/widget/SecGearPreference;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockType:Lcom/samsung/android/settings/widget/SecGearPreference;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/widget/SecGearPreference;->setEnabled(Z)V

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->removeAllViews()V

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    :cond_6
    return-object v0
.end method

.method public static getActiveTrustAgents(Landroid/content/Context;Lcom/android/settings/security/trustagent/TrustAgentManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/security/trustagent/TrustAgentManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v4, 0x80

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    sget v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    move-object/from16 v5, p2

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v6

    nop

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v7, 0x10

    move-object/from16 v8, p0

    invoke-static {v8, v7, v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_0
    move v9, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_8

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    move-object/from16 v13, p3

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v1, v10, v2}, Lcom/android/settings/security/trustagent/TrustAgentManager;->shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    nop

    invoke-virtual {v1, v2, v10}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    move-result-object v11

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v11, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v10}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v11, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    if-eqz v7, :cond_5

    invoke-virtual {v1, v10}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v12

    move-object/from16 v13, p3

    invoke-virtual {v13, v0, v12}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_6

    iput-object v7, v11, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_2

    :cond_5
    move-object/from16 v13, p3

    :cond_6
    :goto_2
    iget-object v12, v11, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    if-nez v12, :cond_7

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v12, v12, Landroid/content/pm/ServiceInfo;->labelRes:I

    move-object v14, v0

    :try_start_0
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v15, "LockScreenSettings"

    const-string v1, "getResourcesForApplication NameNotFoundException!"

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_3
    invoke-static {v14, v12}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v14, :cond_7

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartLockSummary:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartLockSummary:Ljava/lang/String;

    iput-object v0, v11, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    :cond_7
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :goto_4
    add-int/lit8 v0, v9, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v13, p3

    :goto_5
    return-object v3
.end method

.method private getBiometricsSummary(ZZZZ)Ljava/lang/String;
    .locals 15

    move-object v1, p0

    const-string v0, ", "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ar"

    const-string v4, "ja"

    const-string v5, "zh"

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v0, "\u060c "

    :cond_0
    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v0, "\u3001"

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v0, "\uff0c"

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "4digits_pin_enabled"

    const/4 v9, 0x0

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_3

    move v0, v8

    goto :goto_2

    :cond_3
    move v0, v9

    :goto_2
    move v10, v0

    move v11, v9

    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "knox_finger_print_plus"

    invoke-static {v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v8, :cond_4

    move v0, v8

    goto :goto_3

    :cond_4
    move v0, v9

    :goto_3
    move v11, v0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v12, "LockScreenSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SettingNotFoundException : "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_4
    const-string v0, "LockScreenSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isMultifactorEnabled : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v13, 0x30000

    const/high16 v8, 0x20000

    if-eqz v11, :cond_11

    iget-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v9, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v9, 0x10000

    const v12, 0x7f121a34

    if-eq v0, v9, :cond_e

    if-eq v0, v8, :cond_8

    if-eq v0, v13, :cond_8

    const/high16 v8, 0x40000

    if-eq v0, v8, :cond_5

    const/high16 v8, 0x50000

    if-eq v0, v8, :cond_5

    const/high16 v8, 0x60000

    if-eq v0, v8, :cond_5

    goto/16 :goto_5

    :cond_5
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/Object;

    const v9, 0x7f121ae7

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    aput-object v8, v0, v13

    invoke-virtual {v1, v12, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_6
    const/4 v8, 0x1

    const v9, 0x7f121ae7

    const/4 v13, 0x0

    if-eqz p2, :cond_7

    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v13

    const v8, 0x7f121a38

    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_7
    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v13

    const v8, 0x7f121a36

    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_8
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    if-eqz v10, :cond_9

    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/Object;

    const v8, 0x7f121aec

    invoke-virtual {v1, v8}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v0, v9

    invoke-virtual {v1, v12, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_9
    const/4 v8, 0x1

    const/4 v9, 0x0

    new-array v0, v8, [Ljava/lang/Object;

    const v8, 0x7f121aeb

    invoke-virtual {v1, v8}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v9

    invoke-virtual {v1, v12, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_a
    if-eqz p2, :cond_c

    if-eqz v10, :cond_b

    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/Object;

    const v8, 0x7f121aec

    invoke-virtual {v1, v8}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v0, v9

    const v12, 0x7f121a38

    invoke-virtual {v1, v12, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_b
    const/4 v8, 0x1

    const/4 v9, 0x0

    const v12, 0x7f121a38

    new-array v0, v8, [Ljava/lang/Object;

    const v8, 0x7f121aeb

    invoke-virtual {v1, v8}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v9

    invoke-virtual {v1, v12, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_c
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v10, :cond_d

    new-array v0, v8, [Ljava/lang/Object;

    const v8, 0x7f121aec

    invoke-virtual {v1, v8}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v9

    const v12, 0x7f121a36

    invoke-virtual {v1, v12, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_d
    const v12, 0x7f121a36

    new-array v0, v8, [Ljava/lang/Object;

    const v8, 0x7f121aeb

    invoke-virtual {v1, v8}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v9

    invoke-virtual {v1, v12, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_e
    if-eqz p2, :cond_f

    if-eqz p3, :cond_f

    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/Object;

    const v9, 0x7f121ae9

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    aput-object v8, v0, v13

    invoke-virtual {v1, v12, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_f
    const/4 v8, 0x1

    const v9, 0x7f121ae9

    const/4 v13, 0x0

    if-eqz p2, :cond_10

    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v13

    const v8, 0x7f121a38

    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_10
    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v13

    const v8, 0x7f121a36

    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_5
    goto/16 :goto_7

    :cond_11
    iget-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v9, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-eq v0, v8, :cond_13

    if-eq v0, v13, :cond_13

    const/high16 v8, 0x40000

    if-eq v0, v8, :cond_12

    const/high16 v8, 0x50000

    if-eq v0, v8, :cond_12

    const/high16 v8, 0x60000

    if-eq v0, v8, :cond_12

    packed-switch v0, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const v0, 0x7f120734

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :pswitch_1
    const v0, 0x7f121ae9

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_12
    const v0, 0x7f121ae7

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_13
    if-eqz v10, :cond_14

    const v0, 0x7f121aec

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_14
    const v0, 0x7f121aeb

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_6
    if-eqz p1, :cond_15

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1202b4

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    if-eqz p4, :cond_16

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1217ed

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    if-eqz p3, :cond_17

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120be7

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    if-eqz p2, :cond_18

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1209b0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    :goto_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLockType()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f121add

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f121adc

    goto :goto_0

    :cond_1
    const v0, 0x7f121adb

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const-string v2, "LockScreenSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passwordQulity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_5

    const/high16 v2, 0x30000

    if-eq v1, v2, :cond_5

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_4

    const/high16 v2, 0x50000

    if-eq v1, v2, :cond_4

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_4

    const/high16 v2, 0x70000

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f120734

    goto :goto_0

    :pswitch_1
    const v0, 0x7f121ae9

    goto :goto_0

    :cond_3
    const v0, 0x7f121ad0

    goto :goto_0

    :cond_4
    const v0, 0x7f121ae7

    goto :goto_0

    :cond_5
    const v0, 0x7f121aeb

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLockTypeSummary(I)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f121add

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f121adc

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v1, 0x7f121adb

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v6, 0x10

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v6, 0x100

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v3, 0x1

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v6, 0x1000

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x1

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabledByDPM(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v1, 0x0

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabledByDPM(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v3, 0x0

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isIrisDisabledByDPM(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v2, 0x0

    :cond_9
    invoke-direct {p0, v4, v1, v2, v3}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getBiometricsSummary(ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const v0, 0x7f1219df

    goto :goto_0

    :cond_0
    const v0, 0x7f1219de

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v4, Landroid/content/res/Resources;

    invoke-direct {v4, v1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :try_start_0
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v0, ""

    :cond_0
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_1
    const-string v2, "Smart Lock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "LockScreenSettings"

    const-string v2, "isSmartLockSupported : true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_2
    const-string v2, "LockScreenSettings"

    const-string v3, "isSmartLockSupported : false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private needShowSmartLockDialog(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "lock_screen_menu_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "smart_lock_show_dialog"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/ConnectionsUtils;->isCHNSimInserted(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method private setClockStyleState()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "LockScreenSettings"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    :goto_2
    div-int/lit16 v3, v0, 0x2710

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    move v3, v5

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    const-string v4, "LockScreenSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setClockStyleState : T/F<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isDisabledClockStyle(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "aod_mode"

    sget v9, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-static {v7, v8, v2, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_6

    goto :goto_5

    :cond_6
    move v5, v2

    :goto_5
    if-nez v6, :cond_8

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v8, 0x7f1204d8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_7

    :cond_8
    :goto_6
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v8, 0x7f1204d9

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :goto_7
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v7, v2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v7, 0x7f1204d7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_8

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v7, 0x7f1204da

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :goto_8
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :goto_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v5, v2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_b
    return-void
.end method

.method private setLinkedDataView()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/security/SecurityUtils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v3

    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v5, :cond_a

    new-instance v5, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.android.settings"

    const-string v8, "com.samsung.android.settings.smartscan.SmartScanEntry"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "flowId"

    const/16 v8, 0x2343

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "callerMetric"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "relative_link"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iput-object v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v7, 0x7f1202b4

    iput v7, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v7}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.android.settings"

    const-string v11, "com.samsung.android.settings.face.FaceEntry"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "flowId"

    const/16 v11, 0x2344

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "callerMetric"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "relative_link"

    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iput-object v9, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v10, 0x7f1202b1

    iput v10, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v10}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.android.settings"

    const-string v13, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "flowId"

    const/16 v13, 0x2345

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "callerMetric"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "relative_link"

    invoke-virtual {v11, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iput-object v11, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v12, 0x7f1202b3

    iput v12, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v12, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v12}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    const-string v14, "com.android.settings"

    const-string v15, "com.android.settings.fingerprint.FingerprintEntry"

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "flowId"

    const/16 v15, 0x2346

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "callerMetric"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v14, "relative_link"

    invoke-virtual {v13, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iput-object v13, v12, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v14, 0x7f1202b2

    iput v14, v12, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v14, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v14}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.samsung.android.applock"

    move-object/from16 v16, v6

    const-string v6, "com.samsung.android.applock.settings.AppLockSettingsActivity"

    invoke-virtual {v15, v8, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "flowId"

    const/16 v8, 0x1208

    invoke-virtual {v15, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "callerMetric"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v8

    invoke-virtual {v15, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "is_from_suggestions"

    const/4 v8, 0x1

    invoke-virtual {v15, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iput-object v15, v14, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    const-string v8, "com.samsung.android.app.sprotect"

    invoke-static {v6, v8}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f12018f

    iput v6, v14, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_0

    :cond_1
    const v6, 0x7f12018d

    iput v6, v14, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :goto_0
    const/4 v6, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    move/from16 v17, v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v8, v6}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v6

    move/from16 v17, v6

    goto :goto_1

    :cond_2
    move/from16 v17, v6

    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIntelligentBiometrics()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->isGuestUser()Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v4, :cond_3

    if-nez v17, :cond_3

    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportSilentLock()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->isGuestUser()Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    if-nez v2, :cond_4

    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v4, :cond_4

    if-nez v17, :cond_4

    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportIris()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->isGuestUser()Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v1, :cond_5

    if-nez v3, :cond_5

    if-nez v2, :cond_5

    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/security/SecurityUtils;->isSharedDeviceSupportIris(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v4, :cond_5

    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_5
    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->isGuestUser()Z

    move-result v6

    if-nez v6, :cond_6

    if-nez v1, :cond_6

    if-nez v3, :cond_6

    if-nez v2, :cond_6

    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-static {v6, v8}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_6

    if-nez v4, :cond_6

    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v6, v12}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_6
    const-string v6, "applock"

    invoke-static {v6}, Lcom/android/settings/Utils;->supportEnhancedFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v8, "com.samsung.android.app.sprotect"

    invoke-static {v6, v8}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v6, v14}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_9
    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v6, v0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method private showSmartLockDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12187c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, p2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0285

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a065f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v4, 0x7f0a04c2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$5;

    invoke-direct {v5, p0, v3, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$5;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenSettings;Landroid/widget/CheckBox;Landroid/content/Intent;)V

    const v6, 0x7f120516

    invoke-virtual {v1, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$4;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V

    const v6, 0x7f12050f

    invoke-virtual {v1, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$3;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move v6, p3

    move-object v8, p1

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string v1, "LockScreenSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private updateClockAndInformationPreference()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getLockType()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f121add

    if-eqz v3, :cond_5

    if-nez v1, :cond_4

    if-ne v0, v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v3, :cond_7

    if-ne v0, v5, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v3, :cond_a

    if-eqz v1, :cond_9

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isUsingContentHomeButtonInAOD(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    :cond_a
    :goto_5
    if-eqz v1, :cond_c

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isUsingContentHomeButtonInAOD(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_d
    :goto_6
    return-void
.end method

.method private updateDualClock()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dualclock_menu_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string v3, "oversea"

    const-string v4, "ril.currentplmn"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f1207b6

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f120fb0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dualclock_menu_settings"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    const-string v4, "LockScreenSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEasyMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method private updateDynamicLockscreen()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "content://com.samsung.android.dynamiclock.provider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "support_link_settings"

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "dls_enabled"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    const-string v4, "enabled"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move v1, v4

    const-string v4, "LockScreenSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDynamicLockscreen : state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDynamicLockscreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDynamicLockscreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDynamicLockscreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    new-instance v3, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDynamicLockscreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    :goto_1
    return v0
.end method

.method private updateLockType(ILcom/samsung/android/settings/widget/SecGearPreference;ZZ)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result v0

    const-string v1, "LockScreenSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUCMEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnforced()Z

    move-result v1

    const-string v2, "LockScreenSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUCMEnforced : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->getUCMKeyguardVendorName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p2, v4}, Lcom/samsung/android/settings/widget/SecGearPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    if-ne v1, v3, :cond_1

    invoke-virtual {p2, v2}, Lcom/samsung/android/settings/widget/SecGearPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v3}, Lcom/samsung/android/settings/widget/SecGearPreference;->setEnabled(Z)V

    :goto_0
    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getLockTypeSummary(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/samsung/android/settings/widget/SecGearPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2, v3}, Lcom/samsung/android/settings/widget/SecGearPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-nez p3, :cond_4

    if-eqz p4, :cond_5

    :cond_4
    invoke-virtual {p2, v2}, Lcom/samsung/android/settings/widget/SecGearPreference;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method private updateLockscreenMagazineSettings()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigDynamicLockScreenPolicy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDlsSupported:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.android.dynamiclock"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MagazineLockScreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mMagazineLockscreen:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private updateNotificationValue()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_notifications"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    const v1, 0x7f120ddd

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const v1, 0x7f120ddc

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_2

    const v3, 0x7f1219df

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    return-void
.end method

.method private updateOtherLockscreenServices()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "content://com.samsung.android.dynamiclock.provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "support_link_settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "supported"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    const-string v3, "LockScreenSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateOtherLockscreenServices : enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOtherLockscreenServices:Landroid/support/v7/preference/SecPreferenceScreen;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings$2;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->informationCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOtherLockscreenServices:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private updateOwnerInfo()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    :cond_2
    const v1, 0x7f1217cf

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateScreenLockTypePreference()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockType:Lcom/samsung/android/settings/widget/SecGearPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockType:Lcom/samsung/android/settings/widget/SecGearPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockType:Lcom/samsung/android/settings/widget/SecGearPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockType:Lcom/samsung/android/settings/widget/SecGearPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/SecGearPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockType:Lcom/samsung/android/settings/widget/SecGearPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/SecGearPreference;->setEnabled(Z)V

    :cond_4
    :goto_3
    return-void
.end method

.method private updateSecureLockSettings()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportPowerKey()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/security/SecurityUtils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateSmartLock()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->addSmartLockPreference()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartlock:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    const v2, 0x7f120d3c

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    const v2, 0x7f120d3d

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartlock:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setSummary(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartlock:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartlock:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/security/SecurityUtils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartlock:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartlock:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setEnabled(Z)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/LockScreenSettings;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "LockScreenSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1e78

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500d7

    return v0
.end method

.method protected isGuestUser()Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "LockScreenSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/16 v1, 0xb1

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateOwnerInfo()V

    return-void

    :cond_2
    const/16 v1, 0x7b

    if-ne p1, v1, :cond_6

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "face_widgets_option"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "roaming_clock_option"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_notifications_option"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    const-string v3, "LockScreenSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult : LockscreenDisabled (Show on AOD F/D/N<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ">)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->disableAllFaceWidget(Landroid/content/Context;)V

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "coversetting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mFromCoverSetting:Z

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120d3f

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartLockSummary:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const v2, 0x7f120d3e

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mSmartLockSummary:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_2

    const-string v2, "trust_agent_click_intent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "trust_agent_click_intent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_2
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-static {v2, v3}, Lcom/android/settings/password/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUm:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mProfileChallengeUserId:I

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    const-class v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->unregisterContentObserver()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "lock_screen_menu_notifications"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x1130

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    const v3, 0x7f120ddd

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    const v3, 0x7f120ddc

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v2, :cond_1

    const v7, 0x7f1219df

    goto :goto_0

    :cond_1
    move v7, v3

    :goto_0
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockscreenSecNotification:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_show_notifications"

    nop

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v6, 0x1163

    invoke-static {v4, v6, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v6, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lockscreen_notifications_option"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return v5

    :cond_4
    const-string v3, "lock_screen_dualclock"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "dualclock_menu_settings"

    invoke-static {v3, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v3, 0x1138

    invoke-static {v4, v3, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v4, 0x7f1207b6

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->setClockStyleState()V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->MY_USER_ID:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_6

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "roaming_clock_option"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    return v5

    :cond_7
    const-string v3, "dynamic_lock_screen"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :try_start_0
    const-string v3, "content://com.samsung.android.dynamiclock.provider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "enabled"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "settings_dls_enabled"

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v7, v8, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v5

    :cond_8
    return v6
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const-string v2, "unlock_set_or_change"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x1130

    const/4 v4, 0x0

    const v5, 0x7f120d2c

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v6

    :cond_0
    const/16 v2, 0x1131

    invoke-static {v3, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "fromScreenLock"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "com.android.settings.password.ChooseLockGeneric$ChooseLockGenericFragment"

    const v10, 0x7f121ad9

    const/16 v11, 0x7b

    move-object v7, p0

    move-object v8, p0

    move-object v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_3

    :cond_1
    const-string v2, "secured_lock_settigns"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v6

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    :cond_3
    const-string v2, "magazine_lockscreen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v6

    :cond_4
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getLockscreenMagazineSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "LockScreenSettings"

    const-string v4, "Not exist MAGAZINE LOCKSCREEN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    goto/16 :goto_3

    :cond_5
    const-string v2, "trust_agent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getMetricsCategory()I

    move-result v4

    const/16 v5, 0x1156

    invoke-static {v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->needShowSmartLockDialog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->showSmartLockDialog(Landroid/content/Context;Landroid/content/Intent;)V

    return v6

    :cond_6
    invoke-static {v3, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    new-instance v3, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    const/16 v4, 0xb1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_7
    goto/16 :goto_3

    :cond_8
    const-string v2, "lock_screen_dualclock"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    :cond_9
    const-string v2, "clock_style_pref"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v6

    :cond_a
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getClockStyleSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "LockScreenSettings"

    const-string v4, "Not exist ClockPackSetting Activity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1
    goto :goto_3

    :cond_b
    const-string v2, "lock_screen_menu_owner_infomation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3

    :cond_c
    const v3, 0x7f12055e

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->newInstance(I)Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-virtual {v4, p0, v5}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v7, "dialog"

    invoke-virtual {v4, v5, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const-string v2, "about_lockscreen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0x116c

    :try_start_2
    invoke-static {v3, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getAboutLockscreenMenuIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    const-string v3, "LockScreenSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "About Lock screen ActivityNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :goto_3
    return v6

    :cond_e
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->ChangeSettingsAsLockScreenDisabled()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->setLinkedDataView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->buildPreferenceForCOM()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateDualClock()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateNotificationValue()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateSmartLock()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateSecureLockSettings()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateClockAndInformationPreference()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateScreenLockTypePreference()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->setClockStyleState()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateDynamicLockscreen()Z

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateOtherLockscreenServices()V

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->getLockType()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockType:Lcom/samsung/android/settings/widget/SecGearPreference;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateLockType(ILcom/samsung/android/settings/widget/SecGearPreference;ZZ)V

    const-class v2, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/AODPreferenceController;->registerContentObserver()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected updatePreferenceRelatedAOD()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->updateClockAndInformationPreference()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->setClockStyleState()V

    return-void
.end method

.method protected updatePreferenceStates()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

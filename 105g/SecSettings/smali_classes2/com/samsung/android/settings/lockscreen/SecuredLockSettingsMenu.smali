.class public Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuredLockSettingsMenu.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$UnificationConfirmationDialog;,
        Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mAutoFactoryReset:Landroid/support/v14/preference/SecSwitchPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceLockDialog:Landroid/app/AlertDialog;

.field private mDirectionLockBeep:Landroid/support/v14/preference/SecSwitchPreference;

.field private mDirectionLockVibration:Landroid/support/v14/preference/SecSwitchPreference;

.field private mDirectionLockVisible:Landroid/support/v14/preference/SecSwitchPreference;

.field private mDirectionLockVoice:Landroid/support/v14/preference/SecSwitchPreference;

.field private mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

.field private mLockNetworkAndSecurity:Landroid/support/v14/preference/SecSwitchPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLocktype:I

.field private mPasswordConfirmed:Z

.field private mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SecSwitchPreference;

.field private mResetCount:I

.field private mShowLockDownOption:Landroid/support/v14/preference/SecSwitchPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mVisiblePattern:Landroid/support/v14/preference/SecSwitchPreference;

.field private mWaitingForConfirmation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    return-void
.end method

.method private InitValue()V
    .locals 9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "visiblepattern"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v5, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string v3, "auto_factory_reset"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "auto_swipe_main_user"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, ""

    const v6, 0x7f12138c

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    iget v8, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f12138d

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    iget v8, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result v6

    if-ne v6, v1, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_7
    const-string v3, "lock_network_and_security"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v3, :cond_a

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "lock_function_val"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    goto :goto_3

    :cond_8
    move v3, v2

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v3, :cond_9

    const v6, 0x7f120d4d

    goto :goto_4

    :cond_9
    const v6, 0x7f120d4c

    :goto_4
    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_a
    const-string v3, "lockdown_in_power_menu"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mShowLockDownOption:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mShowLockDownOption:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "lockdown_in_power_menu"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    goto :goto_5

    :cond_b
    move v3, v2

    :goto_5
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mShowLockDownOption:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mShowLockDownOption:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v5, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v5, "lock_after_timeout"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const v6, 0x7f120d28

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setTitle(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->updateLockAfterPreferenceSummary()V

    :cond_d
    const-string v5, "power_button_instantly_locks"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SecSwitchPreference;

    const v6, 0x7f120d4f

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_e
    const-string v5, "lock_screen_visible"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v5, "lock_screen_vibration"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v5, "lock_screen_voice"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v5, "lock_screen_beep"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v6, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    const v6, 0x10001

    if-eq v5, v6, :cond_f

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/support/v14/preference/SecSwitchPreference;

    :cond_f
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "universal_lock_visible"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_10

    move v5, v1

    goto :goto_6

    :cond_10
    move v5, v2

    :goto_6
    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_11
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "universal_lock_vibration"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_12

    move v5, v1

    goto :goto_7

    :cond_12
    move v5, v2

    :goto_7
    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_13
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "universal_lock_beep"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_14

    move v5, v1

    goto :goto_8

    :cond_14
    move v5, v2

    :goto_8
    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_15
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "universal_lock_voice"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_16

    move v5, v1

    goto :goto_9

    :cond_16
    move v5, v2

    :goto_9
    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setEnabled(Z)V

    :cond_18
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v5, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_19
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_1b
    return-void
.end method

.method private RemoveMenu()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isVibrationSupport()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    const/high16 v1, 0x90000

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    const v1, 0x9100

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportPowerKey()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    return v0
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 12

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/16 v2, 0x3c

    div-long v4, v0, v2

    rem-long/2addr v0, v2

    const-string v2, ""

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f100023

    long-to-int v11, v4

    invoke-virtual {v3, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v10, v9, [Ljava/lang/Object;

    long-to-int v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    cmp-long v3, v0, v6

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100024

    long-to-int v10, v0

    invoke-virtual {v6, v7, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    long-to-int v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v3, "SecuredLockSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutNewEntry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private isVibrationSupport()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    const-wide/16 v3, 0x1388

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0300c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0300c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_0

    iget-object v7, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v10

    goto :goto_0

    :cond_0
    move-wide v10, v8

    :goto_0
    const-string v7, "SecuredLockSettingsMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateLockAfterPreferenceSummary, adminTimeout = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "screen_off_timeout"

    const/4 v13, 0x0

    invoke-static {v7, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-long v14, v7

    const-string v7, "SecuredLockSettingsMenu"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateLockAfterPreferenceSummary, displayTimeout = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v12, v10, v14

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    const-string v7, "SecuredLockSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateLockAfterPreferenceSummary, maxTimeout = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, 0x0

    cmp-long v9, v10, v7

    if-lez v9, :cond_4

    const/4 v8, 0x0

    :goto_1
    array-length v9, v4

    if-ge v8, v9, :cond_2

    aget-object v9, v4, v8

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v9, v18, v12

    if-gtz v9, :cond_1

    aget-object v9, v3, v8

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v9, v4, v8

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const-string v8, "SecuredLockSettingsMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "revisedValues.size() : "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v12, v7

    const-string v9, "SecuredLockSettingsMenu"

    move-wide/from16 v20, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "last_timeout : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_3

    array-length v9, v4

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v9, v4, v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v9, v12, v18

    if-gez v9, :cond_3

    const v9, 0x7f120d77

    new-array v11, v10, [Ljava/lang/Object;

    invoke-direct {v0, v12, v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v11, v16

    invoke-virtual {v0, v9, v11}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_3

    :cond_4
    move-wide/from16 v20, v10

    const/4 v7, 0x0

    :goto_2
    array-length v8, v4

    if-ge v7, v8, :cond_5

    aget-object v8, v3, v7

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const/4 v7, 0x0

    move v8, v7

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v1, v9

    if-ltz v11, :cond_6

    move v8, v7

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    const v7, 0x7f120d2a

    const v9, 0x7f120d29

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v12

    if-gez v10, :cond_8

    cmp-long v10, v12, v1

    if-gez v10, :cond_8

    const-string v10, "SecuredLockSettingsMenu"

    const-string v11, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    move-object/from16 v22, v3

    const/4 v11, 0x1

    new-array v3, v11, [Ljava/lang/Object;

    invoke-direct {v0, v12, v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x0

    aput-object v11, v3, v16

    invoke-virtual {v0, v7, v3}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_5
    const/4 v10, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v22, v3

    const-string v3, "SecuredLockSettingsMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateLockAfterPreferenceSummary, best = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_9

    iget-object v3, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v11, v16

    invoke-virtual {v0, v9, v11}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isInDefaultTimeoutList(J)Z

    move-result v3

    if-eqz v3, :cond_b

    cmp-long v3, v1, v12

    if-ltz v3, :cond_a

    const-wide/16 v10, 0x0

    cmp-long v3, v12, v10

    if-nez v3, :cond_b

    :cond_a
    iget-object v3, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v11, v16

    invoke-virtual {v0, v7, v11}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_b
    const/4 v10, 0x1

    const/16 v16, 0x0

    iget-object v3, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    new-array v11, v10, [Ljava/lang/Object;

    invoke-direct {v0, v12, v13}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v11, v16

    invoke-virtual {v0, v7, v11}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v3, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v3, v10}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method private updatePreferences()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    const v1, 0x10001

    if-ne v0, v1, :cond_0

    const v0, 0x7f1500f5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1500f0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->addPreferencesFromResource(I)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->InitValue()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->RemoveMenu()V

    return-void
.end method

.method private verifyCurrentLock()V
    .locals 5

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f121b0d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    const/4 v3, 0x1

    const/16 v4, 0x12c

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    const-string v1, "SecuredLockSettingsMenu"

    const-string v2, "Need to confirm Current Lock"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1150

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->updatePreferences()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const-string v0, "SecuredLockSettingsMenu"

    const-string v1, "Lock confirm failed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "SecuredLockSettingsMenu"

    const-string v1, "Lock confirmed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->highlightPreferenceIfNeeded(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "password_already_confirmed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    const-string v0, "waiting_for_confirmation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->verifyCurrentLock()V

    :cond_1
    nop

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    const-string v1, "user"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "SecuredLockSettingsMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visiblepattern"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x1150

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget v5, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    const/16 v1, 0x1152

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v1, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "power_button_instantly_locks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget v5, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    const/16 v1, 0x1154

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v1, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "auto_factory_reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "auto_swipe_main_user"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v1, 0x1155

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v1, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "lock_network_and_security"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "lock_function_val"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f120d4d

    goto :goto_0

    :cond_3
    const v4, 0x7f120d4c

    :goto_0
    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    const/16 v1, 0x1157

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v1, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "lockdown_in_power_menu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "lockdown_in_power_menu"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v1, 0x116d

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v2, v1, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_1

    :cond_5
    const-string v1, "lock_screen_visible"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVisible:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-ne v1, v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "universal_lock_visible"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionShowEnabled(ZI)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "universal_lock_visible"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionShowEnabled(ZI)V

    goto/16 :goto_1

    :cond_7
    const-string v1, "lock_screen_vibration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVibration:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-ne v1, v3, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "universal_lock_vibration"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVibrationEnabled(ZI)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "universal_lock_vibration"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVibrationEnabled(ZI)V

    goto :goto_1

    :cond_9
    const-string v1, "lock_screen_beep"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockBeep:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-ne v1, v3, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "universal_lock_beep"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionSoundEnabled(ZI)V

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "universal_lock_beep"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionSoundEnabled(ZI)V

    goto :goto_1

    :cond_b
    const-string v1, "lock_screen_voice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDirectionLockVoice:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-ne v1, v3, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "universal_lock_voice"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVoiceEnabled(ZI)V

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "universal_lock_voice"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVoiceEnabled(ZI)V

    :cond_d
    :goto_1
    return v3
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_after_timeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.LockAfterTimeout"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 3

    const-string v0, "SecuredLockSettingsMenu"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120d50

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->finish()V

    return-void

    :cond_1
    const-string v0, "lock_after_timeout"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const v1, 0x7f120d28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setTitle(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->updateLockAfterPreferenceSummary()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "password_already_confirmed"

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

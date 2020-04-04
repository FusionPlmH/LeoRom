.class public Lcom/samsung/android/settings/accessories/ShowInfomationMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ShowInfomationMenu.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static final ACCU_WEATHERINFO_URI:Landroid/net/Uri;

.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private mClockStyle:Landroid/support/v7/preference/SecPreference;

.field private mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFromCoverSetting:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->MY_USER_ID:I

    new-instance v0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mFromCoverSetting:Z

    new-instance v0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu$1;-><init>(Lcom/samsung/android/settings/accessories/ShowInfomationMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private InitValue()V
    .locals 7

    const-string v0, "ShowInfomationMenu"

    const-string v1, "onResume() 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cover_clock_style_pref"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->setClockStyleState()V

    :cond_0
    const-string v0, "cover_show_info_lock_screen_dualclock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dualclock_menu_settings"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    const-string v3, "oversea"

    const-string v4, "ril.currentplmn"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f121431

    if-nez v3, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f121591

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dualclock_menu_settings"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v5, 0x7f1215d0

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setTitle(I)V

    :cond_5
    const-string v0, "cover_lock_screen_menu_owner_infomation"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->updateOwnerInfo()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const v4, 0x7f1213d2

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setTitle(I)V

    :cond_7
    const-string v0, "cover_lock_screen_additional_info"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "com.samsung.android.app.aodservice"

    invoke-static {v0, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    const v4, 0x7f121338

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    const v4, 0x7f121335

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_9
    :goto_3
    const-string v0, "cover_lock_screen_settings_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->isSupportWeatherMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getRegisteredCityCount(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getWidgetCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->isWeatherState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    const v3, 0x7f1219df

    goto :goto_4

    :cond_a
    const v3, 0x7f1219de

    :goto_4
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_d
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->hasCoverSettingOwnerInfo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->hasCoverSettingWeather(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mWeatherSettings:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_f

    const-string v0, "cover_lock_screen_settings_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->removePreference(Ljava/lang/String;)Z

    :cond_f
    const-string v0, "cover_lock_screen_menu_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v0, "cover_lock_screen_menu_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->removePreference(Ljava/lang/String;)Z

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->hasCoverSettingFaceWidgets(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v1, :cond_12

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    const/4 v1, 0x6

    if-eq v0, v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_12
    return-void
.end method

.method private RemoveMenu()V
    .locals 2

    const-string v0, "ShowInfomationMenu"

    const-string v1, "onResume() 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cover_show_info_lock_screen_dualclock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->removePreference(Ljava/lang/String;)Z

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cover_lock_screen_additional_info"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->removePreference(Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->isSupportWeatherMenu(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "cover_lock_screen_settings_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->removePreference(Ljava/lang/String;)Z

    const-string v0, "cover_lock_screen_menu_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->isSupportWeatherStateSettings()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "cover_lock_screen_settings_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    const-string v0, "cover_lock_screen_menu_weather"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->removePreference(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/accessories/ShowInfomationMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->updatePreferenceRelatedAOD()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->MY_USER_ID:I

    return v0
.end method

.method public static existWeatherWidgetOnLauncher(Landroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "ShowInfomationMenu"

    const-string v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "WIDGET_COUNT"

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    if-eqz v9, :cond_2

    sget-object v4, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    const-string v3, "WIDGET_COUNT"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "WIDGET_COUNT"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    if-lez v2, :cond_3

    const/4 v0, 0x1

    nop

    :cond_3
    return v0
.end method

.method public static getRegisteredCityCount(Landroid/content/Context;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v3, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    const-string v2, "LOCATION"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getWidgetCount(Landroid/content/Context;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    if-eqz v7, :cond_2

    sget-object v2, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    const-string v1, "WIDGET_COUNT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0
.end method

.method public static isWeatherState(Landroid/content/Context;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    if-eqz v8, :cond_2

    sget-object v3, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->ACCU_SETTING_URI:Landroid/net/Uri;

    const-string v2, "LOCKSCREEN_AND_S_VIEW_COVER"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    if-lez v0, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1
.end method

.method private launchClockStyleSettings()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.android.app.aodservice"

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.app.clockpack"

    :goto_0
    const-string v2, "com.samsung.android.app.clockpack.settings.ClockPackChooserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mFromCoverSetting:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_2

    :cond_1
    const-string v3, "fromcoversettings"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "ShowInfomationMenu"

    const-string v4, "Not exist ClockPackSetting Activity"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private setClockStyleState()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aod_mode"

    sget v3, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->MY_USER_ID:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isDisabledClockStyle(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v3, 0x7f1213c1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v3, 0x7f1213c2

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v4, 0x7f1213c0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v4, 0x7f1213c3

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :goto_4
    return-void
.end method

.method public static showWeatherWidgetMessageDialog(Landroid/content/Context;)V
    .locals 5

    if-nez p0, :cond_0

    const-string v0, "ShowInfomationMenu"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->hasCoverSettingWeather(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f1216a5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f1216a6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const v2, 0x7f121507

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120516

    new-instance v4, Lcom/samsung/android/settings/accessories/ShowInfomationMenu$2;

    invoke-direct {v4}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu$2;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateOwnerInfo()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    :cond_2
    const v1, 0x7f1217cf

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updatePreferenceRelatedAOD()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mOwnerInfo:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1eaa

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->updateOwnerInfo()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500d8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->addPreferencesFromResource(I)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "coversetting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mFromCoverSetting:Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "cover_show_info_lock_screen_dualclock"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "dualclock_menu_settings"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v5, 0x7f121431

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->setClockStyleState()V

    return v2

    :cond_1
    return v3
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cover_clock_style_pref"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->launchClockStyleSettings()V

    goto/16 :goto_2

    :cond_0
    const-string v1, "cover_lock_screen_menu_weather"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->existWeatherWidgetOnLauncher(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v4, 0x1

    nop

    :cond_1
    move v2, v4

    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->showWeatherWidgetMessageDialog(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.weather.intent.action.START_ACTIVITY_SETTING_VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "PACKAGE"

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    nop

    :goto_1
    goto/16 :goto_2

    :cond_4
    const-string v1, "cover_lock_screen_settings_weather"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getWidgetCount(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v2, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const-string v5, "com.android.settings.WeatherSettings"

    const/4 v6, 0x0

    const v7, 0x7f121507

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v9, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_5
    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->showWeatherWidgetMessageDialog(Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    const-string v1, "cover_lock_screen_menu_owner_infomation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x7f121069

    if-eqz v2, :cond_9

    const v3, 0x7f1213d2

    :cond_9
    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->newInstance(I)Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-virtual {v4, p0, v5}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "dialog"

    invoke-virtual {v4, v5, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_a
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 4

    const-string v0, "ShowInfomationMenu"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->InitValue()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->RemoveMenu()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/ShowInfomationMenu;->finish()V

    :cond_0
    return-void
.end method

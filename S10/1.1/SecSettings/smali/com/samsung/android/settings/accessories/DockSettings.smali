.class public Lcom/samsung/android/settings/accessories/DockSettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "DockSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAboutLedViewCover:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

.field private mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

.field private mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

.field private mLedBackCover:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mLedCoverNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mLedIconEditor:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSViewWallpaper:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mShowSecNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSmartAccessorySettings:Landroid/support/v7/preference/SecPreferenceScreen;

.field private showWireLessChargeMenu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/accessories/DockSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessories/DockSettings$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessories/DockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessories/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/DockSettings$1;-><init>(Lcom/samsung/android/settings/accessories/DockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/accessories/DockSettings;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/DockSettings;->updateBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/accessories/DockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->sendDownloadPopupEventBoardcast()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->isMateCoverAttached(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1219d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1219cf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessories/DockSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/DockSettings$2;-><init>(Lcom/samsung/android/settings/accessories/DockSettings;)V

    const v2, 0x7f120e88

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessories/DockSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/DockSettings$3;-><init>(Lcom/samsung/android/settings/accessories/DockSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private initDockSettings()V
    .locals 8

    const-string v0, "cover"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v0, "sview_wallpaper"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mSViewWallpaper:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "automatic_unlock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v0, "cover_lock_screen_dualclock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "cover_show_sec_notifications"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mShowSecNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "fast_charing_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string v0, "fast_wireless_charging"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const-string v0, "led_cover_notifications_icon"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mLedCoverNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "led_icon_editor"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mLedIconEditor:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "about_led_view_cover"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mAboutLedViewCover:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v0, "led_back_cover"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mLedBackCover:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v0, "smart_accessory_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mSmartAccessorySettings:Landroid/support/v7/preference/SecPreferenceScreen;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v3, 0x7f120441

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    const/16 v4, 0x8

    if-ge v2, v3, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "sview_wallpaper"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "cover_lock_screen_dualclock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "cover_show_sec_notifications"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "led_cover_caller_id"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "led_cover_notifications_icon"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "led_icon_editor"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "about_led_view_cover"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "led_back_cover"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const/16 v5, 0xe

    const/4 v6, 0x7

    if-eqz v3, :cond_7

    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v7, 0x7f1219cc

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    goto :goto_0

    :cond_3
    if-ne v2, v6, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v7, 0x7f1219cd

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    goto :goto_0

    :cond_4
    if-ne v2, v4, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v7, 0x7f1219cb

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    goto :goto_0

    :cond_5
    const/16 v3, 0xb

    if-ne v2, v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v7, 0x7f1219ce

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    goto :goto_0

    :cond_6
    if-ne v2, v5, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v7, 0x7f120cc7

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->hasCoverWallpaper(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "sview_wallpaper"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->hasCoverDualClockOptionOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "cover_lock_screen_dualclock"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->hasCoverSettingShowNotifications(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "cover_show_sec_notifications"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    :cond_b
    if-eq v2, v6, :cond_c

    const-string v3, "led_cover_caller_id"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v3, "led_cover_notifications_icon"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v3, "led_icon_editor"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v3, "about_led_view_cover"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_1

    :cond_c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.samsung.android.app.ledcoverdream"

    const-string v7, "com.samsung.android.app.ledcover.app.LCoverAboutActivity"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "about_led_view_cover"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    :cond_d
    :goto_1
    if-eq v2, v5, :cond_e

    const-string v3, "led_back_cover"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_3

    :cond_e
    const-string v3, "automatic_unlock"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_3

    :cond_f
    :goto_2
    const-string v2, "cover"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "automatic_unlock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v2, "sview_wallpaper"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "cover_info_and_app_shortcut"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "cover_lock_screen_dualclock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "cover_show_sec_notifications"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "led_cover_caller_id"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "led_cover_notifications_icon"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "led_icon_editor"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "about_led_view_cover"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "led_back_cover"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    :goto_3
    const-string v2, "automatic_unlock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_10
    const-string v2, "cover_note"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecCheckBoxPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    const-string v2, "cover_note_weather_unit"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecListPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "cover_note"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "cover_note_weather_unit"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_4

    :cond_11
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/SecCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/SecListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_wireless_charger_menu"

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->showWireLessChargeMenu:I

    iget v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->showWireLessChargeMenu:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportFastWirelessCharger()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v3, 0x7f12145b

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f12145d

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f120989

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_5

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v3, 0x7f12145a

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f12145c    # 1.94173E38f

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v3, 0x7f12145e

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_5

    :cond_13
    const-string v2, "fast_charing_category"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string v2, "fast_wireless_charging"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/accessories/DockSettings;->isMateCoverAttached(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string/jumbo v2, "smart_accessory"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v2, "smart_accessory_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->removePreference(Ljava/lang/String;)Z

    :cond_14
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v4, :cond_15

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const v4, 0x7f120792

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    const v4, 0x7f1204d3

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_15
    return-void
.end method

.method private static isMateCoverAttached(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mate_setting_activation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private sendDownloadPopupEventBoardcast()V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.applinker.action.REQUEST_DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.ledcoverdream"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    array-length v5, v2

    const/4 v6, 0x1

    add-int/2addr v5, v6

    int-to-byte v5, v5

    const/4 v7, 0x0

    aput-byte v5, v3, v7

    const/4 v5, 0x3

    aput-byte v5, v3, v6

    array-length v5, v2

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string v4, "URI"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "DEVICE_TYPE"

    const-string v5, "cover"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "NAME"

    const-string v5, "LED Cover"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "DockSettings"

    const-string/jumbo v5, "show great led download popup"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setShowSecNotificationsSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const v1, 0x7f1204d4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessories/DockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f12150b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessories/DockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private showDownloadLedCoverAppDialog()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f1219d1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessories/DockSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const v6, 0x7f1207a9

    invoke-virtual {p0, v6, v4}, Lcom/samsung/android/settings/accessories/DockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const v5, 0x7f1207a8

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/accessories/DockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/settings/accessories/DockSettings$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessories/DockSettings$5;-><init>(Lcom/samsung/android/settings/accessories/DockSettings;)V

    const v6, 0x7f120e88

    invoke-virtual {v3, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/settings/accessories/DockSettings$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessories/DockSettings$4;-><init>(Lcom/samsung/android/settings/accessories/DockSettings;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v3, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    return-void
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "status"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f121459

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v2, 0x7f12145b

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f12145d

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f120989

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessChargeCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const v2, 0x7f12145a

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f12145c    # 1.94173E38f

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    const v2, 0x7f12145e

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DockSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500b8

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->initDockSettings()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "automatic_unlock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "automatic_unlock"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_0
    const-string v1, "cover_note"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/SecCheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cover_note"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "DockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save KEY_COVER_NOTE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "cover_note_weather_unit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cover_note_weather_unit"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v1, "fast_wireless_charging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wireless_fast_charging"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_4
    :goto_0
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_unlock"

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x41c

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mSViewWallpaper:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->startMyThemeWallpaperActivity(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mLedCoverNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.app.ledcovergrace"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.ledcovergrace"

    const-string v2, "com.samsung.android.app.ledcovergrace.app.LCoverNotiMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->showDialog(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mLedIconEditor:Landroid/support/v7/preference/SecPreferenceScreen;

    const v1, 0x10008000

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.samsung.android.app.ledcoverdream"

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->showDownloadLedCoverAppDialog()V

    goto/16 :goto_1

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.ledcover.action.LAUNCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_6
    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mAboutLedViewCover:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v0, :cond_9

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.ledcoverdream"

    const-string v2, "com.samsung.android.app.ledcover.app.LCoverAboutActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_8
    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mLedBackCover:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v0, :cond_b

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.ledbackcover.action.LAUNCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_a
    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mSmartAccessorySettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v0, :cond_d

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.mateagent"

    const-string v2, "com.samsung.android.mateagent.setting.SettingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_c
    goto :goto_1

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v0, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x426

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mShowSecNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x427

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$LockscreenNotificationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/DockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_f
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 8

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mAutomaticUnlock:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "automatic_unlock"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    if-eqz v1, :cond_3

    const-string v1, "cover_note"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverNote:Landroid/support/v7/preference/SecCheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/SecCheckBoxPreference;->setChecked(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    if-eqz v1, :cond_4

    const-string v1, "cover_note_weather_unit"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverNoteWeatherUnit:Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/SecListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_6

    const-string v1, "oversea"

    const-string v4, "ril.currentplmn"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121431

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121591

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dualclock_menu_settings"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mDualclock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f1215d0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mShowSecNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mShowSecNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->setShowSecNotificationsSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mShowSecNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mShowSecNotifications:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_8
    :goto_3
    iget v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->showWireLessChargeMenu:I

    if-ne v1, v2, :cond_b

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportFastWirelessCharger()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "wireless_fast_charging"

    const/4 v4, -0x1

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_9

    const-string/jumbo v4, "wireless_fast_charging"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mFastWirelessCharging:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne v1, v2, :cond_a

    move v5, v2

    goto :goto_4

    :cond_a
    move v5, v3

    :goto_4
    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_6

    :cond_d
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/DockSettings;->mCoverInfomation:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_e
    :goto_6
    return-void
.end method

.class public Lcom/samsung/android/settings/notification/SoundSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/logging/status/StatusLogger;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SoundSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mPrefControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field private mSystemFeedback:Landroid/support/v7/preference/SecPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/notification/SoundSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/SoundSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/samsung/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/notification/SoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/notification/SoundSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/notification/SecSoundIntervalSoundModeController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/notification/SecSoundVibrateWhenRingingController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/notification/SecSoundDefaultVolumeController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundVolumeController;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/notification/SecSoundVolumeController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundDownloadRingtoneController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SecSoundDownloadRingtoneController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundRingtoneController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/notification/SecSoundRingtoneController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundDSRingtoneController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/notification/SecSoundDSRingtoneController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundDeviceVibrationController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SecSoundDeviceVibrationController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundNotificationController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/notification/SecSoundNotificationController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundDSNotificationController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/notification/SecSoundDSNotificationController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundTColoringController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/notification/SecSoundTColoringController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundRingToYouController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/notification/SecSoundRingToYouController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundFeelRingController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/notification/SecSoundFeelRingController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundVibrationFeedbackController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SecSoundVibrationFeedbackController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundStereoSoundController;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/notification/SecSoundStereoSoundController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    return-object v0
.end method

.method private initUPSMModePreference()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreenResId()I

    move-result v1

    const-string v2, "UPSM"

    invoke-static {v0, v1, v2}, Landroid/support/v7/preference/SecPreferenceUtils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/SoundSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
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

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SoundSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x150

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500fa

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/settings/notification/SoundSettings;->mPrefControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v3, v2, Lcom/android/settings/development/OnActivityResultListener;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/settings/development/OnActivityResultListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/android/settings/development/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    or-int/2addr v0, v3

    :cond_0
    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->initUPSMModePreference()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "sound_system_feedback"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSystemFeedback:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSystemFeedback:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mSystemFeedback:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "open_screen"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "open_screen"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "notification_sounds"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "notification_sound"

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v3}, Lcom/android/settings/DefaultRingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/DefaultRingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string v3, "open_screen"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ringtone_screen"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "ringtone"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v4}, Lcom/android/settings/DefaultRingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v3}, Lcom/android/settings/DefaultRingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SoundUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12189f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SoundSettings;->setLinkedDataView(Landroid/content/Context;)V

    return-void
.end method

.method public setLinkedDataView(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v4, :cond_3

    new-instance v4, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-direct {v4, p1}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const/16 v5, 0x150

    if-nez v4, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v6, 0x7f120118

    iput v6, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.android.app.telephonyui.action.OPEN_CALL_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "root_key"

    const-string v8, "ANSWERING_AND_ENDING_CALLS"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "FROM_ACCESSIBILITY"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "flowId"

    const/16 v7, 0x232a

    invoke-virtual {v6, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "callerMetric"

    invoke-virtual {v6, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v6, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    add-int/lit8 v3, v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_1
    const-string v1, "smart_alert"

    invoke-static {p1, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v4, 0x7f12107e

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$MotionAndGestureActivity"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "type"

    const-string v7, "smart_alert"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "flowId"

    const/16 v7, 0x232b

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "callerMetric"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v6, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_2
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v4, 0x7f122027

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$SecZenModeDNDSettingsActivity"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "callerMetric"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    if-lez v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

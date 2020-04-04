.class public Lcom/android/settings/notification/ConfigureNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ConfigureNotificationSettings$SummaryProvider;
    }
.end annotation


# static fields
.field static final KEY_LOCKSCREEN:Ljava/lang/String; = "lock_screen_notifications"

.field static final KEY_LOCKSCREEN_WORK_PROFILE:Ljava/lang/String; = "lock_screen_notifications_profile"

.field static final KEY_LOCKSCREEN_WORK_PROFILE_HEADER:Ljava/lang/String; = "lock_screen_notifications_profile_header"

.field static final KEY_SWIPE_DOWN:Ljava/lang/String; = "gesture_swipe_down_fingerprint_notifications"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mPrefDND:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mPrefStatusBar:Landroid/support/v7/preference/Preference;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mRequestPreference:Lcom/android/settings/RingtonePreference;

.field private mTipView:Lcom/samsung/android/settings/widget/RelativeLinkView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/ConfigureNotificationSettings$3;

    invoke-direct {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/notification/ConfigureNotificationSettings$4;

    invoke-direct {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ConfigureNotificationSettings;)Lcom/samsung/android/settings/widget/RelativeLinkView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mTipView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/notification/ConfigureNotificationSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Landroid/app/Application;",
            "Landroid/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    new-instance v2, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v2}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    invoke-direct {v1, p0, v2, p2, p3}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/app/Application;Landroid/app/Fragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/notification/SecAppIconBadgesOnHomeScreenController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/notification/SecSoundZenModeDNDController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/display/controller/LedIndicatorPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/controller/LedIndicatorPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private setLinkedDataView()V
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x3ffffffe    # 1.9999998f

    const v3, 0x3ffffffd    # 1.9999996f

    const/16 v4, 0xc

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v1, :cond_5

    new-instance v1, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v8, 0x7f121257

    iput v8, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, ":settings:fragment_args_key"

    const-string v11, "ds_ring_tone"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v10, ":settings:fragment_args_key"

    const-string v11, "ringtone"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v10, ":settings:show_fragment_args"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v10, "extra_from_search"

    invoke-virtual {v8, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "flowId"

    const/16 v11, 0x232c

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "callerMetric"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getMetricsCategory()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, ":settings:top_level_tile_id"

    const-string v11, "notification_settings"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v8, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v10, v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_1
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v8, 0x7f120048

    iput v8, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.samsung.accessibility"

    const-string v10, "com.samsung.accessibility.Activities$NotificationReminderActivity"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, ":settings:fragment_args_key"

    const-string v10, "com.samsung.accessibility.advanced.notificationreminder.NotificationReminderPreferenceFragment"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "flowId"

    const/16 v10, 0x232e

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "callerMetric"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getMetricsCategory()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v8, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v9, v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v9, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    new-instance v9, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v11}, Lcom/samsung/android/settings/widget/RelativeLinkView;->getRelativeLinkView()Landroid/view/View;

    move-result-object v11

    invoke-direct {v9, v10, v11, v6}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    invoke-virtual {v9, v7}, Lcom/android/settings/applications/LayoutPreference;->seslSetSubheaderRoundedBg(I)V

    new-instance v10, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->seslSetSubheaderRoundedBg(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v10, v4}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->seslSetSubheaderRoundedBg(I)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getRelativeLinkViewCount()I

    move-result v11

    mul-int/2addr v11, v5

    sub-int v11, v3, v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getRelativeLinkViewCount()I

    move-result v11

    mul-int/2addr v11, v5

    sub-int v11, v2, v11

    invoke-virtual {v9, v11}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getRelativeLinkViewCount()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v0, v11}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRelativeLinkViewCount(I)V

    :cond_4
    iget-object v11, v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v11, v0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->setTargetFragment(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/support/v7/widget/RecyclerView;->seslSetLastItemOutlineStrokeEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mTipView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mTipView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v1, v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mTipView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    const v8, 0x7f1216af

    invoke-virtual {v1, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;->setTitleText(I)V

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v8, 0x7f1216ad

    iput v8, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    sget-boolean v9, Lcom/samsung/android/settings/Rune;->SUPPORT_NOTI_CHN_SMART_MANAGER:Z

    if-eqz v9, :cond_6

    const-string v9, "com.samsung.android.sm_cn"

    const-string v10, "com.samsung.android.sm.autorun.ui.AutoRunActivity"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    const-string v9, "com.samsung.android.lool"

    const-string v10, "com.samsung.android.sm.battery.ui.usage.CheckableAppListActivity"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string v9, ":settings:fragment_args_key"

    const-string v10, "key_always_sleeping_apps"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "extra_from_search"

    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v9, "flowId"

    const/16 v10, 0xfdc

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "callerMetric"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getMetricsCategory()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v8, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    new-instance v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v9}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v10, 0x7f1216ac

    iput v10, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "com.android.settings"

    const-string v12, "com.android.settings.Settings$ConnectionsSettingsActivity"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "extra_from_search"

    invoke-virtual {v10, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v11, "flowId"

    const/16 v12, 0xfdd

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v11, "callerMetric"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getMetricsCategory()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v10, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v11, "com.android.settings.datausage.DataSaverSummary"

    iput-object v11, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    iget v12, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v12

    iget v13, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f1216ab

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v11, v15, v7

    aput-object v12, v15, v6

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/android/settings/notification/ConfigureNotificationSettings$1;

    invoke-direct {v14, v0, v1}, Lcom/android/settings/notification/ConfigureNotificationSettings$1;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    new-instance v15, Lcom/android/settings/notification/ConfigureNotificationSettings$2;

    invoke-direct {v15, v0, v9}, Lcom/android/settings/notification/ConfigureNotificationSettings$2;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    invoke-virtual {v13, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    nop

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    add-int v4, v2, v16

    invoke-virtual {v5, v14, v2, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    nop

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v5, v15, v3, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/widget/TextView;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v17, v1

    const v1, 0x7f13039f

    invoke-direct {v6, v7, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v1, v4

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x106017b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0705c1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move/from16 v18, v2

    const v2, 0x7f0705bc

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mTipView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/RelativeLinkView;->getRelativeLinkView()Landroid/view/View;

    move-result-object v2

    const v6, 0x7f0a046a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mTipView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->getRelativeLinkView()Landroid/view/View;

    move-result-object v1

    move-object/from16 v20, v2

    const/4 v2, 0x1

    invoke-direct {v6, v7, v1, v2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    move-object v1, v6

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->seslSetSubheaderRoundedBg(I)V

    new-instance v2, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->seslSetSubheaderRoundedBg(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getRelativeLinkViewCount()I

    move-result v6

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    const v7, 0x3ffffffd    # 1.9999996f

    sub-int v6, v7, v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getRelativeLinkViewCount()I

    move-result v6

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    const v7, 0x3ffffffe    # 1.9999998f

    sub-int v6, v7, v6

    invoke-virtual {v1, v6}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getRelativeLinkViewCount()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRelativeLinkViewCount(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-static {p1, v2, v1, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ConfigNotiSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfd2

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150030

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "zen_mode_dnd"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mPrefDND:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "configure_notification_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "key_status_bar"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mPrefStatusBar:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mPrefStatusBar:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mPrefStatusBar:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mPrefDND:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mPrefDND:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/RingtonePreference;

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v3}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/notification/ConfigureNotificationSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/android/settings/notification/NotificationAppPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xfd9

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_badging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xfd3

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zen_mode_dnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xfd5

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_status_bar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xfd7

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "all_notifications"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xfdb

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setLinkedDataView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    const-string v0, "selected_preference"

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

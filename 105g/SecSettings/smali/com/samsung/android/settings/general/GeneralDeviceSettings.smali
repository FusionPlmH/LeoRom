.class public Lcom/samsung/android/settings/general/GeneralDeviceSettings;
.super Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.source "GeneralDeviceSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecIndexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/general/GeneralDeviceSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mBatterySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

.field mContext:Landroid/content/Context;

.field private mDateTimePref:Landroid/support/v7/preference/SecPreference;

.field private mMemorySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mStorageSettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/general/GeneralDeviceSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/general/GeneralDeviceSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/general/GeneralDeviceSettings;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/general/GeneralDeviceSettings;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/general/GeneralDeviceSettings;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/samsung/android/settings/general/GeneralDeviceSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/general/ContactUsPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/general/ContactUsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/general/GeneralDeviceSettings;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private setLinkedDataView()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v0, :cond_9

    new-instance v0, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "no_modify_accounts"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    move-object v0, v4

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object v3, v4

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$AccountDashboardActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "flowId"

    const/16 v5, 0x233e

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v3, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v4, 0x7f12008d

    iput v4, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/account/AccountUtils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCMCCModel()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    move-object v1, v4

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object v3, v4

    const-string v4, "menu"

    const-string v5, "backup"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "flowId"

    const/16 v5, 0x233f

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v3, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v4, 0x7f12129e

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    move-object v2, v4

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object v3, v4

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$DataUsageSummaryCHNActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v4, "flowId"

    const/16 v5, 0x2340

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v3, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v4, 0x7f120640

    iput v4, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_5
    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_6
    if-eqz v1, :cond_7

    const/16 v4, 0x800

    invoke-static {v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_7
    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_9
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

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/samsung/android/settings/general/GeneralDeviceSettings;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x12d4

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500c8

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "battery_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    const-string/jumbo v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    const-string v0, "memory_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setFragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "battery_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)Z

    const-string v0, "memory_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)Z

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "reset_preference"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)Z

    :cond_1
    const-string v0, "device_info_date_time_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mDateTimePref:Landroid/support/v7/preference/SecPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mDateTimePref:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/general/GeneralUtils;->isAvailableNewTimeZone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mDateTimePref:Landroid/support/v7/preference/SecPreference;

    const v1, 0x7f0d0237

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setWidgetLayoutResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mDateTimePref:Landroid/support/v7/preference/SecPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setWidgetLayoutResource(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "battery_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "storage_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "memory_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    :goto_0
    const-string v1, "GeneralDeviceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is clicked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "battery_settings"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "com.samsung.android.sm.ACTION_BATTERY"

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "storage_settings"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "com.samsung.android.sm.ACTION_STORAGE"

    goto :goto_1

    :cond_3
    const-string v3, "com.samsung.android.sm.ACTION_RAM"

    :goto_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    const-string v6, "GeneralDeviceSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "start sm not available : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/general/GeneralDeviceSettings;->setLinkedDataView()V

    return-void
.end method

.class public Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "DataUsageSummarySecondPage.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mDataUsageReminder:Landroid/support/v14/preference/SwitchPreference;

.field private mSetOperatorPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x156

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->supportAutoVerfiyTraffic()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->mSetOperatorPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->mSetOperatorPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const v1, 0x7f1500ab

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->addPreferencesFromResource(I)V

    const-string v1, "data_usage_reminder"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->mDataUsageReminder:Landroid/support/v14/preference/SwitchPreference;

    const-string v1, "operator_set"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->mSetOperatorPreference:Landroid/support/v7/preference/Preference;

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->mDataUsageReminder:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->mDataUsageReminder:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f120636

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->mDataUsageReminder:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "data_usage_reminder"

    const/4 v5, -0x2

    invoke-static {v2, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, "data_usage_reminder"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->removePreference(Ljava/lang/String;)Z

    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DataUsageSummarySecondPage"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "DataUsageSummarySecondPage"

    const-string v1, "onPreferenceChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "data_usage_reminder"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_usage_reminder"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->mSetOperatorPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v2

    sput v2, Lcom/samsung/android/settings/datausage/trafficmanager/ui/OperatorSettingActivity;->sSubId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const-class v3, Lcom/samsung/android/settings/datausage/trafficmanager/ui/OperatorSettingActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x7f121058

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v2

    move-object v4, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    const-string v0, "DataUsageSummarySecondPage"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->mSetOperatorPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->mSetOperatorPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "DataUsageSummarySecondPage"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onStart()V

    return-void
.end method

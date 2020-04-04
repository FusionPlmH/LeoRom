.class public Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "DataUsageSummaryCHN.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;


# instance fields
.field private isKnoxmode:Z

.field private mCellDataPreference:Lcom/android/settings/datausage/CellDataPreference;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

.field private final mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mIsVPNConnected:Z

.field private mMobileCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

.field private mMobileDataOnlyPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mNoSimSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootView:Landroid/view/View;

.field private mSetDataPreference:Landroid/support/v7/preference/Preference;

.field private mTopUpDataBalance:Landroid/support/v7/preference/Preference;

.field private mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mMobileCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->isKnoxmode:Z

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mIsVPNConnected:Z

    new-instance v0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$3;-><init>(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    new-instance v0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$4;-><init>(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->updateState()V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mIsVPNConnected:Z

    return p1
.end method

.method public static hasEnableSimCard(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    const-string v3, "DataUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the ActiveSubscriptionInfoCount is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method

.method private updateState()V
    .locals 6

    const-string v0, "DataUsageSummary"

    const-string/jumbo v1, "updateState-start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v4, v3, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v4, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    move-object v4, v3

    check-cast v4, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iget-boolean v5, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mIsVPNConnected:Z

    invoke-virtual {v4, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMobileCategoryUI(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addEnt1Section(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ent1_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const v2, 0x7f1500ad

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setPrimary(Z)V

    invoke-virtual {v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMobileCategory()V

    :cond_1
    return-void
.end method

.method protected addMobileSection(I)V
    .locals 8

    nop

    const v0, 0x7f1500ab

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setPrimary(Z)V

    invoke-virtual {v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMobileCategory()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mMobileCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    const-string v4, "DataUsageSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addMobileSection - subId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DataUsageSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addMobileSection - slotId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_0

    const-string v4, "mobile_category"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getSimName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_usage_enable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/CellDataPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mCellDataPreference:Lcom/android/settings/datausage/CellDataPreference;

    const-string/jumbo v4, "set_used_data"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mSetDataPreference:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.app.sreminder"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v1, :cond_1

    const v5, 0x5091d

    if-le v4, v5, :cond_1

    const-string/jumbo v5, "top_up_data_balance"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mTopUpDataBalance:Landroid/support/v7/preference/Preference;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mTopUpDataBalance:Landroid/support/v7/preference/Preference;

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "top_up_data_balance"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->supportAutoVerfiyTraffic()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "operator_set"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_RIL_SUPPORT_MOBILE_DATA_ONLY"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "mobile_data_only"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mMobileDataOnlyPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Application;

    invoke-static {v5}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mMobileDataOnlyPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mMobileDataOnlyPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, p0}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    goto :goto_1

    :cond_4
    const-string v5, "mobile_data_only"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->isKnoxmode:Z

    if-eqz v5, :cond_5

    const-string v5, "mobile_data_only"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string v5, "restrict_app_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string v5, "billing_preference_chn"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "set_used_data"

    invoke-virtual {v0, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DataUsageSummary"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500ac

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->changeLayoutOrientation(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    new-instance v0, Lcom/android/settings/datausage/DataUsageInfoController;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageInfoController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mDataInfoController:Lcom/android/settings/datausage/DataUsageInfoController;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->isKnoxmode:Z

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->addMobileSection(I)V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->addWifiSection()V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->addWifiSection()V

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageUtils;->hasEthernet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->addEthernetSection()V

    :cond_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->setHasOptionsMenu(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_5

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$1;-><init>(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mRootView:Landroid/view/View;

    const v1, 0x7f0a01c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0d021c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mRootView:Landroid/view/View;

    const v2, 0x7f0a01c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onDestroy()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0208

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "sub_id"

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    const-class v4, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataUsageSummarySecondPage;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    const v8, 0x7f120625

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x25

    move-object v5, v2

    invoke-static/range {v3 .. v10}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;ZI)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->startActivity(Landroid/content/Intent;)V

    const/4 v4, 0x1

    return v4
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mMobileDataOnlyPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mptcp_value"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "smart_bonding"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v0, :cond_3

    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/overlay/FeatureFactory;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->makeMDODisablePopup(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN$2;-><init>(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "urspservice"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/UrspManager;

    invoke-virtual {v5, v4, v0}, Landroid/net/UrspManager;->setUrspMode(IZ)V

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->updateState()V

    :cond_4
    :goto_2
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mSetDataPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b015f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN$BytesEditorCHNFragment;->show(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mTopUpDataBalance:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.lifeservice.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    const-string v2, "phone_data_recharge"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "SM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v1, "DataUsageSummary"

    const-string/jumbo v2, "start the mTopUpDataBalance"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DataUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTopUpPhoneBalance tap exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f0a0208

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->supportDataUsageSecondPage()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 13

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->updateState()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->isMultiTab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mNoSimSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mNoSimSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWifiMode(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mNoSimSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mNoSimSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iget-wide v5, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    const-wide/16 v7, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageNumbers(JJZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mNoSimSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setChartEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mNoSimSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iget-wide v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    iget-wide v6, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageInfo(JJJLjava/lang/CharSequence;ILandroid/content/Intent;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v1, "warningDialogTag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DoNotShowAgainDialogFragment;->setParent(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V

    :cond_3
    const-string v2, "errorWarningDialogTag"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/ShowWarningDialogFragment;->setParent(Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V

    :cond_4
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mMobileDataOnlyPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mMobileDataOnlyPreference:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "DataUsageSummary"

    const-string v1, "onViewCreated - start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->initView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->changeLayoutOrientation(I)V

    const-string/jumbo v0, "usage_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mNoSimSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    :goto_0
    const-string v0, "DataUsageSummary"

    const-string v1, "onViewCreated - end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMobileSectionTitle(Landroid/telephony/SubscriptionInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mMobileCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->mMobileCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    const-string v1, "mobile_category"

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/DataUsageSummaryCHN;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

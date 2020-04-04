.class public Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartNetworkSwitchSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

.field private static mIsIndividualAppsHiddenByKnox:Z


# instance fields
.field private emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private mAggBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

.field private mAggressiveEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mDataRoamingObserver:Landroid/database/ContentObserver;

.field private mEnabled:Z

.field private mExcludedNetworkPref:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsSupportAggMode:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mNormalBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSAScreenId:Ljava/lang/String;

.field private mSnsEnabler:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

.field private mSnsSettingPref:Landroid/support/v7/preference/PreferenceScreen;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchForIndividualApps:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mIsIndividualAppsHiddenByKnox:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$1;-><init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$2;-><init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mDataRoamingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$3;-><init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;-><init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->finishSnsSettings()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mIsIndividualAppsHiddenByKnox:Z

    return v0
.end method

.method private finishSnsSettings()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setActionBarTitle()V
    .locals 7

    const v0, 0x7f121f46

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x59

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "SalesCode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vzw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "sns_excluded_device"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedNetworkPref:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string v2, "mode_normal_mode"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mNormalBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    const-string v2, "mode_aggressive_mode"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    const-string v2, "empty_general"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mNormalBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setVisible(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;->setVisible(Z)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mNormalBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->emptyCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->seslSetSubheaderRoundedBg(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0271

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->setHeaderView(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsSettingPref:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedNetworkPref:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    const-string v3, "wifi_switch_for_individual_apps"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchForIndividualApps:Landroid/support/v14/preference/SwitchPreference;

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mExcludedNetworkPref:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mNormalBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggBtn:Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchForIndividualApps:Landroid/support/v14/preference/SwitchPreference;

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/support/v7/preference/SecPreferenceScreen;Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;Lcom/samsung/android/settings/wifi/SnsRadioButtonPreference;Landroid/support/v14/preference/SwitchPreference;)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->setActionBarTitle()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "SalesCode"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vzw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->removeHeaderView()V

    const v3, 0x7f150123

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    xor-int/lit8 v3, v2, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mIsSupportAggMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    const-string v0, "SmartNetworkSwitchSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smart Network Switch Aggressive Mode Enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f1212b5

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSAScreenId:Ljava/lang/String;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SmartNetworkSwitchSettings"

    const-string v1, "Action bar up button"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f1208e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSAScreenId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->pause()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x39cbb118

    if-eq v1, v2, :cond_1

    const v2, 0x78d429a4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "sns_excluded_device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "sns_excluded_device_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v1, "SmartNetworkSwitchSettings"

    const-string v2, "Excluded Network Preference Selected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f121f1b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f120937

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSAScreenId:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->setActionBarTitle()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSnsEnabler:Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->resume()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mAggressiveEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->mSAScreenId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

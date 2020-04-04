.class public Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "WifiExceptionNetworkSettings.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mExcludedNetworksCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    const-string v0, "WifiExceptionNetworkSettings"

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings$2;-><init>(Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->updateExcludedNetworks()V

    return-void
.end method

.method private setActionBarTitle()V
    .locals 7

    const v0, 0x7f121ed2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->getResources()Landroid/content/res/Resources;

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

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_1
    return-void
.end method

.method private setEmptyMessage()V
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSnsNoItemsPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiSnsNoItemsPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const v1, 0x7f121ed5

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSnsNoItemsPreference;->setTitle(I)V

    nop

    const-string v1, "WifiExceptionNetworkSettings"

    const-string v2, "setEmptyMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->mExcludedNetworksCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method private updateExcludedNetworks()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->mExcludedNetworksCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_0

    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    if-lt v5, v2, :cond_0

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, "WifiExceptionNetworkSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config SSID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiExcludedNetworkPref;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Lcom/samsung/android/settings/wifi/WifiExcludedNetworkPref;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->mExcludedNetworksCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "WifiExceptionNetworkSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error calling configuredNetworks "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    nop

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->mExcludedNetworksCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-ge v3, v2, :cond_2

    const-string v2, "WifiExceptionNetworkSettings"

    const-string v3, "No Item"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->mExcludedNetworksCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->setEmptyMessage()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f15014b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->addPreferencesFromResource(I)V

    const-string v0, "wifi_excluded_network"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->mExcludedNetworksCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->updateExcludedNetworks()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->setActionBarTitle()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ACTION_WCM_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings$1;-><init>(Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->setActionBarTitle()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiExceptionNetworkSettings;->updateExcludedNetworks()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onStart()V

    return-void
.end method

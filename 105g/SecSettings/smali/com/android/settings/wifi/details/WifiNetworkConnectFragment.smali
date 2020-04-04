.class public Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiNetworkConnectFragment.java"


# instance fields
.field private mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mProgressBarItem:Landroid/view/MenuItem;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSAScreenId:Ljava/lang/String;

.field private mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

.field private mWifiConnectPrefController:Lcom/android/settings/wifi/details/WifiConnectPrefController;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment$1;-><init>(Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;)Lcom/android/settings/wifi/details/TempWifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settings/wifi/details/WifiConnectPrefController;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/net/wifi/WifiManager;

    iget-object v8, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mSAScreenId:Ljava/lang/String;

    move-object v2, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/wifi/details/WifiConnectPrefController;-><init>(Lcom/samsung/android/settingslib/wifi/AccessPoint;Landroid/app/Fragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mWifiConnectPrefController:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "AcessPoint_SavedState"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mWifiConnectPrefController:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v8, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mSAScreenId:Ljava/lang/String;

    move-object v3, v2

    move-object v5, p0

    move-object v6, p1

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;-><init>(Landroid/app/Activity;Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "WifiNetworkConnectFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x351

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15010a

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    const-string v0, "WifiNetworkConnectFragment"

    const-string v1, "attach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getInstance()Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AcessPoint_SavedState"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mTempConfiguration:Lcom/android/settings/wifi/details/TempWifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->setconfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1212eb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mSAScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "wifi_tips_notification"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120925

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mSAScreenId:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "WifiNetworkConnectFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mProgressBarItem:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mProgressBarItem:Landroid/view/MenuItem;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mProgressBarItem:Landroid/view/MenuItem;

    const v3, 0x7f0d02d6

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mProgressBarItem:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mProgressBarItem:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mProgressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

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
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12092c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mSAScreenId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "shared_device_status"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "WifiNetworkConnectFragment"

    const-string v1, "isSharedDeviceKeyguardOn!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mSAScreenId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    return-void
.end method

.method public setProgressBarVisible(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mProgressBarItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mProgressBarItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mProgressBarItem:Landroid/view/MenuItem;

    const v2, 0x7f0d02d6

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mProgressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mProgressBarItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mProgressBarItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->mProgressBarItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

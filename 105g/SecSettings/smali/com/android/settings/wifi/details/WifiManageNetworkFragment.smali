.class public Lcom/android/settings/wifi/details/WifiManageNetworkFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiManageNetworkFragment.java"


# static fields
.field private static controllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mSAScreenId:Ljava/lang/String;

.field private mWifiManageNetworkController:Lcom/android/settings/wifi/details/WifiManageNetworkController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 12
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

    sget-object v0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->controllers:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->controllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->controllers:Ljava/util/List;

    :goto_0
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AcessPoint_SavedState"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details/WifiManageNetworkController;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/net/wifi/WifiManager;

    iget-object v10, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v11, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mSAScreenId:Ljava/lang/String;

    move-object v2, v1

    move-object v4, p1

    move-object v5, p0

    move-object v8, v0

    move-object v9, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/settings/wifi/details/WifiManageNetworkController;-><init>(Lcom/samsung/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Landroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mWifiManageNetworkController:Lcom/android/settings/wifi/details/WifiManageNetworkController;

    sget-object v1, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->controllers:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mWifiManageNetworkController:Lcom/android/settings/wifi/details/WifiManageNetworkController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->controllers:Ljava/util/List;

    new-instance v8, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mSAScreenId:Ljava/lang/String;

    move-object v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/details/WifiAdvancedPrefController;-><init>(Landroid/app/Activity;Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "WifiManageNetworkFragment"

    const-string v2, "launchNetworkDetailsFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->controllers:Ljava/util/List;

    return-object v1
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x25b

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "WifiManageNetworkFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x351

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15010d

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getInstance()Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "AcessPoint_SavedState"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->setconfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1212f1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mSAScreenId:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

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
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12092c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mSAScreenId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiManageNetworkFragment;->mSAScreenId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

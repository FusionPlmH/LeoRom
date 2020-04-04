.class public Lcom/android/settings/wifi/details/WifiAdvancedFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiAdvancedFragment.java"


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

.field private mCancelButton:Landroid/widget/Button;

.field private mSAScreenId:Ljava/lang/String;

.field private mSaveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private initBottomButtonBar()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a013d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d02b0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const v3, 0x7f0a0157

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mCancelButton:Landroid/widget/Button;

    const v3, 0x7f0a06a2

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mSaveButton:Landroid/widget/Button;

    :cond_0
    return-void
.end method

.method private insertLogging(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method private insertLogging(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 11
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

    sget-object v0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->controllers:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->controllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->controllers:Ljava/util/List;

    :goto_0
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->controllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->controllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->controllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mSAScreenId:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->controllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mSAScreenId:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v9, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->controllers:Ljava/util/List;

    new-instance v10, Lcom/android/settings/wifi/details/WifiIpSettingsController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mSAScreenId:Ljava/lang/String;

    move-object v1, v10

    move-object v2, p1

    move-object v3, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/wifi/details/WifiIpSettingsController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/app/Activity;Landroid/net/ConnectivityManager;Lcom/samsung/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->controllers:Ljava/util/List;

    return-object v1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "WifiAdvancedFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x351

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150107

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AcessPoint_SavedState"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const-string v1, "WifiAdvancedFragment"

    const-string v2, "WifiAdvancedFragment addNetwork network"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const-string v1, "WifiAdvancedFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiAdvancedFragment mAccessPoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f121e19

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    invoke-static {}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getInstance()Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->initBottomButtonBar()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1212a4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mSAScreenId:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mSAScreenId:Ljava/lang/String;

    const v1, 0x7f1208f9

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->insertLogging(Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "WifiAdvancedFragment"

    const-string v2, "IllegalStateException: Can not perform this action after onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->mSAScreenId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details/WifiAdvancedFragment;->insertLogging(Ljava/lang/String;)V

    return-void
.end method

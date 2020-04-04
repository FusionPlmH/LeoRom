.class public Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartBondingSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private activity:Lcom/android/settings/SettingsActivity;

.field private mContext:Landroid/content/Context;

.field private final mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

.field private mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

.field private mIsSupport5G:Z

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private smartBondingdesc:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mNofiticationDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mIsSupport5G:Z

    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$1;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    return-void
.end method

.method private getAppLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.sec.android.app.samsungapps"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public static replaceLTEString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "XEC"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LTE"

    const-string v1, "4G"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xe88

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->activity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->activity:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz p1, :cond_0

    const-string v0, "notificationDialogShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->onWidgetChanged(Z)Z

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->activity:Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsUtils;->isSupport5GConcept(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mIsSupport5G:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const v0, 0x7f0d0236

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a084d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->smartBondingdesc:Landroid/widget/TextView;

    const/4 v1, 0x0

    const-string v2, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12189d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v2, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mIsSupport5G:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12189b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12189a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->replaceLTEString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12189c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->replaceLTEString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->smartBondingdesc:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "%1$d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x1e

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->smartBondingdesc:Landroid/widget/TextView;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v5

    const v4, 0x7f120e58

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->getAppLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const-string v2, "%d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->smartBondingdesc:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const-string v2, "SmartBondingSettings"

    const-string v3, "There is no %d."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->activity:Lcom/android/settings/SettingsActivity;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v3, "isWifiEnabled"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->activity:Lcom/android/settings/SettingsActivity;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v4, "isCellularDataAllowed"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez v2, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->updateSmartBondingState(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->finish()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->resume()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->getmNofiticationDialog()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEnabler:Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->getmNofiticationDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notificationDialogShown"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

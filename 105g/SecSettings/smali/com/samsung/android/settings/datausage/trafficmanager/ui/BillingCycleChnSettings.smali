.class public Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "BillingCycleChnSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;,
        Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;
    }
.end annotation


# static fields
.field public static sSubId:I


# instance fields
.field private mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mRestrictData:Landroid/support/v14/preference/SwitchPreference;

.field private mSetDataLimit:Landroid/support/v7/preference/Preference;

.field private mSetPackageStartDate:Landroid/support/v7/preference/Preference;

.field private mSetWarning:Landroid/support/v7/preference/Preference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTrafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mTrafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->updateBillingData()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;)Lcom/android/settings/datausage/TemplatePreference$NetworkServices;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    return-object v0
.end method

.method private updateBillingData()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mTrafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switch_traffic_settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->updateBillingData(Z)V

    return-void
.end method

.method private updateBillingData(Z)V
    .locals 13

    const-string v0, "BillingCycleChnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBillingData() isPackagedSetted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mTrafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set_data_limit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "max"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mTrafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_warning_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mTrafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restrict_data_check_box"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mTrafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_package_start_date"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "BillingCycleChnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KEY_SET_DATA_LIMIT:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "BillingCycleChnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KEY_SET_WARNING:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "BillingCycleChnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KEY_RESTRICT_DATA:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "BillingCycleChnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KEY_SET_PACKAGE_START_DATE_VALUE:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "max"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetDataLimit:Landroid/support/v7/preference/Preference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " MB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_0
    const/4 v6, -0x1

    move v8, v6

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v10, "BillingCycleChnSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in Integer.parseInt(warningValue):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    :goto_1
    if-ne v8, v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v9, 0x7f121a12

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mRestrictData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f1205f6

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetPackageStartDate:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mRestrictData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    const-string v5, "max"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetPackageStartDate:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetDataLimit:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mRestrictData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetWarning:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetPackageStartDate:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mTrafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    sget v9, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v5, v9, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->updatePolicyInner(IZ)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x156

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "BillingCycleChnSettings"

    const-string v1, "onActivityCreated() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mTrafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switch_traffic_settings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "BillingCycleChnSettings"

    const-string v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "network_template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const v1, 0x7f150102

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "set_data_limit"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetDataLimit:Landroid/support/v7/preference/Preference;

    const-string v1, "data_warning_set"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetWarning:Landroid/support/v7/preference/Preference;

    const-string v1, "restrict_data_check_box"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mRestrictData:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "set_package_start_date"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetPackageStartDate:Landroid/support/v7/preference/Preference;

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    sput v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mTrafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mTrafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    sget v2, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->setSubId(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mTrafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->updateDataInfomation()V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mRestrictData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.intent.action.ACTION_DATA_WARNING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const-string v0, "BillingCycleChnSettings"

    const-string v1, "onPreferenceChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mRestrictData:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "BillingCycleChnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange, restrictOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b016c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mTrafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restrict_data_check_box"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->updateBillingData()V

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetPackageStartDate:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    const v2, 0x7f0b0170

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0174

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$CycleEditorFragment;->show(Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetWarning:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0172

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/SettingsActivity;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    const-class v4, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x7f1217d0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mSetDataLimit:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings$BytesEditorFragment;->show(Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;)V

    return v1

    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    const-string v0, "BillingCycleChnSettings"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "BillingCycleChnSettings"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onStart()V

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->updateBillingData()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0171

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1, p2}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    const-string v2, "BillingCycleChnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSwitchChanged() isChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->mTrafficUtils:Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    invoke-virtual {v2, p2}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->setPackagedSetted(Z)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switch_traffic_settings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->sSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/BillingCycleChnSettings;->updateBillingData(Z)V

    return-void
.end method

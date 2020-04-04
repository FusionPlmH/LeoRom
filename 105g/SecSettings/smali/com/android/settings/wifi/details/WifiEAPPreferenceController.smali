.class public Lcom/android/settings/wifi/details/WifiEAPPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiEAPPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private mEapAnonymousErrorText:Landroid/widget/TextView;

.field private mEapAnonymousPref:Lcom/android/settings/applications/LayoutPreference;

.field private mEapAnonymousView:Landroid/widget/EditText;

.field private mPhase1Method:I

.field private mPhase1Pref:Landroid/support/v7/preference/DropDownPreference;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WifiEAPPreferenceController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-static {}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getInstance()Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/details/WifiEAPPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/details/WifiEAPPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/details/WifiEAPPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->setAnonymousIdentity()V

    return-void
.end method

.method private disableViewsIfAppropriate()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mPhase1Pref:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mPhase1Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private getAnonymousIdentityOverride()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getEapMethod()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initPhase1()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mPhase1Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/DropDownPreference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fast_provisioning="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "1"

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mPhase1Method:I

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mPhase1Pref:Landroid/support/v7/preference/DropDownPreference;

    iget v2, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mPhase1Method:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    :cond_2
    return-void
.end method

.method private setAnonymousIdentity()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    return-void
.end method

.method private updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V
    .locals 1

    iput p2, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mPhase1Method:I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    invoke-virtual {p1}, Landroid/support/v7/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "eap_phase1"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mPhase1Pref:Landroid/support/v7/preference/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mPhase1Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mPhase1Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->getEapMethod()I

    move-result v0

    const/16 v3, 0x12

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mPhase1Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->initPhase1()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mPhase1Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mPhase1Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    :goto_0
    const-string v0, "eap_anonymous"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousPref:Lcom/android/settings/applications/LayoutPreference;

    const v3, 0x7f0a086b

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f121e41

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousPref:Lcom/android/settings/applications/LayoutPreference;

    const v3, 0x7f0a02a3

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousPref:Lcom/android/settings/applications/LayoutPreference;

    const v3, 0x7f0a0957

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousErrorText:Landroid/widget/TextView;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController$WifiEapIdTextWatcher;-><init>(Lcom/android/settings/wifi/details/WifiEAPPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousErrorText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->getEapMethod()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->getEapMethod()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    :goto_2
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->disableViewsIfAppropriate()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eap_phase1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object v2, p1

    check-cast v2, Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->disableViewsIfAppropriate()V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousPref:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/LayoutPreference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->getAnonymousIdentityOverride()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPreferenceController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.class public Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiEAPPhase2PreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field private static final KEY_EAP_PHASE2:Ljava/lang/String; = "eap_phase2"

.field private static final TAG:Ljava/lang/String; = "WifiEAPPhase2PreferenceController"

.field public static final WIFI_PEAP_PHASE2_AKA:I = 0x4

.field public static final WIFI_PEAP_PHASE2_AKA_PRIME:I = 0x5

.field public static final WIFI_PEAP_PHASE2_GTC:I = 0x2

.field public static final WIFI_PEAP_PHASE2_MSCHAPV2:I = 0x1

.field public static final WIFI_PEAP_PHASE2_NONE:I = 0x0

.field public static final WIFI_PEAP_PHASE2_SIM:I = 0x3


# instance fields
.field private mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

.field private mEapMethod:I

.field private mPhase2Method:I

.field private mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "eap_phase2"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mRes:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getInstance()Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private disableViewsIfAppropriate()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private getEapMethod()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setPhase2Method(I)V
    .locals 5

    const-string v0, "WifiEAPPhase2PreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPhase2Method tEapMethod : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->getEapMethod()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phase2Method : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->getEapMethod()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-nez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "WifiEAPPhase2PreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown phase2 method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->getEapMethod()I

    move-result v0

    const/16 v4, 0x12

    if-ne v0, v4, :cond_1

    packed-switch p1, :pswitch_data_1

    const-string v0, "WifiEAPPhase2PreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown phase2 method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_1

    :cond_1
    packed-switch p1, :pswitch_data_2

    const-string v0, "WifiEAPPhase2PreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown phase2 method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :cond_2
    :goto_1
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v7/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "eap_phase2"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mAccessPoint:Lcom/samsung/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->getEapMethod()I

    move-result v0

    const v2, 0x7f030124

    const/4 v3, 0x1

    const v4, 0x7f030121

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mRes:Landroid/content/res/Resources;

    const v3, 0x112005d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    const v2, 0x7f030122

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    const v3, 0x7f030123

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/DropDownPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->getEapMethod()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    const v2, 0x7f030127

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    const v3, 0x7f030128

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->getEapMethod()I

    move-result v0

    const/16 v5, 0x12

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/DropDownPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Pref:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setVisible(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->disableViewsIfAppropriate()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getPhase2Override()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v1

    const-string v2, "WifiEAPPhase2PreferenceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhase2Override :: phase2 method :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->getEapMethod()I

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    packed-switch v1, :pswitch_data_0

    const-string v2, "WifiEAPPhase2PreferenceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhase2Override :: Unknown phase2 method :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->getEapMethod()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_2

    packed-switch v1, :pswitch_data_1

    const-string v2, "WifiEAPPhase2PreferenceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhase2Override :: Unknown phase2 method :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "WifiEAPPhase2PreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange checked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Method:I

    iget v1, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Method:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->setPhase2Method(I)V

    move-object v1, p1

    check-cast v1, Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->disableViewsIfAppropriate()V

    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->getEapMethod()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mEapMethod:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->getPhase2Override()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Method:I

    const-string v1, "WifiEAPPhase2PreferenceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateState getPhase2Override : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Method:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Method:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->mPhase2Method:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/details/WifiEAPPhase2PreferenceController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    return-void
.end method

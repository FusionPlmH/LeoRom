.class Lcom/android/settings/wifi/ConfigureWifiSettings$1;
.super Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;
.source "ConfigureWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/ConfigureWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/search/SecBaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "advanced_adaptive_wifi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "advanced_network_settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "notify_wifi_recommend"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "auto_wifi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_WIFI_SUPPORT_ADPS"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v3, "wifi_adps"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getMenuStatusForPasspoint()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "MENU_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "wifi_hs20_enable"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v4, "WeChatWiFi"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_SOCIAL_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "wifi_scan_for_free_wlans"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v4, "TencentSecurityWiFi"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "tencent_wifi_security_detection"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Wifi_ConfigAutoConnectHotspot"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "att_auto_connect"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-boolean v5, Lcom/android/settings/Utils;->SUPPORT_NOTIFICATION_MENU:Z

    if-eqz v5, :cond_7

    sget-object v5, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-static {}, Lcom/android/settings/wifi/ConfigureWifiSettings;->access$000()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v6

    if-ne v5, v6, :cond_8

    :cond_7
    const-string v5, "notify_open_networks"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_SupportComcastWifi"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v6, "auto_connect_xfinity_wifi"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v7, "show_wifi_popup"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v7, "ChinaNalSecurity"

    sget-object v8, Lcom/android/settings/Utils;->CONFIG_LOCAL_SECURITY_POLICY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string/jumbo v7, "wlan_permission_available"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-boolean v7, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    if-nez v7, :cond_c

    const-string/jumbo v7, "wifi_connection_type"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    sget-object v7, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->AIO:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-static {}, Lcom/android/settings/wifi/ConfigureWifiSettings;->access$000()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v8

    if-ne v7, v8, :cond_d

    const-string v7, "com.smithmicro.netwise.director.cricket"

    invoke-static {p1, v7}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    :cond_d
    const-string v7, "cricket_manager"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "CMCC"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string/jumbo v8, "wlan_notify_cmcc"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Wifi_SupportSecureWifi"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_SECURE_WIFI"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    :cond_10
    const-string v8, "secure_wifi"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-static {}, Lcom/android/settings/wifi/ConfigureWifiSettings;->access$100()Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, ""

    sget-object v9, Lcom/android/settings/Utils;->CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    :cond_12
    const-string v8, "MobileWIPS"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {p1}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_14

    const-string/jumbo v8, "wifi_poor_network_detection"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    sget-object v8, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->CHA:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-static {}, Lcom/android/settings/wifi/ConfigureWifiSettings;->access$000()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v9

    if-eq v8, v9, :cond_15

    const-string v8, "optimize_charter_wifi_networks"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    const-string v8, "ChinaNalSecurity"

    invoke-static {}, Lcom/android/settings/wifi/ConfigureWifiSettings;->access$200()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    const-string/jumbo v8, "wlan_permission_available"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_17

    const-string v8, "install_credentials"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    const-string v8, ""

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_18
    const-string v9, "ConfigureWifiSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remove preferences at Advanced Wi-Fi Searching Result : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const v2, 0x7f15014e

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v0

    :cond_0
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public secGetVariableRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->VZW:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-static {}, Lcom/android/settings/wifi/ConfigureWifiSettings;->access$000()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v3

    const v4, 0x7f121e96

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;

    invoke-direct {v2, p1}, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;-><init>(Landroid/content/Context;)V

    const-string v3, "notify_open_networks"

    iput-object v3, v2, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->key:Ljava/lang/String;

    const v3, 0x7f121ec3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->screenTitle:Ljava/lang/String;

    const v3, 0x7f121ec2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->summary:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;

    invoke-direct {v2, p1}, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;-><init>(Landroid/content/Context;)V

    const-string v3, "install_credentials"

    iput-object v3, v2, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->key:Ljava/lang/String;

    const v3, 0x7f121e7e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->screenTitle:Ljava/lang/String;

    const v3, 0x7f121e80

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/search/SecSearchIndexableVariableRaw;->summary:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

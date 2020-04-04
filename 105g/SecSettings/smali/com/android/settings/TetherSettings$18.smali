.class Lcom/android/settings/TetherSettings$18;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 11
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

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-eqz v6, :cond_2

    move v3, v4

    nop

    :cond_2
    const-string/jumbo v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "persist.sys.tether_data"

    const/4 v7, -0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x3

    if-ge v6, v8, :cond_3

    const/4 v5, 0x0

    :cond_3
    const/4 v8, 0x2

    if-ge v6, v8, :cond_4

    const/4 v3, 0x0

    :cond_4
    const-string v8, "persist.sys.tether_data_usb"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "persist.sys.tether_data_bt"

    invoke-static {v9, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "persist.sys.tether_data_wifi"

    invoke-static {v10, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v8, v7, :cond_5

    if-ne v9, v7, :cond_5

    if-eq v10, v7, :cond_9

    :cond_5
    if-lez v8, :cond_6

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    if-lez v9, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-lez v10, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :cond_9
    :goto_4
    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v6

    :cond_a
    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_b

    const/4 v2, 0x0

    :cond_b
    and-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_c

    const/4 v3, 0x0

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v4}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, "ATT"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_d
    const-string/jumbo v8, "wifi_ap_settings"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v9

    if-nez v9, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "AIO"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "ATT"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_f
    const-string/jumbo v9, "usb_tether_settings"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    if-nez v3, :cond_11

    const-string v9, "enable_bluetooth_tethering"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    const-string v9, "disabled_on_data_saver"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v1, 0x7f150133

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

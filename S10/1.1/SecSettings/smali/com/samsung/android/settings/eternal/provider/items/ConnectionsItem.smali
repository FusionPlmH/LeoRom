.class public Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;
.super Ljava/lang/Object;
.source "ConnectionsItem.java"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ConnectionsItem"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;
    .locals 7

    new-instance v0, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "/Settings/Connections/LocationMethod"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Aggressive"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "/Settings/Connections/WiFi/Advanced/AutoWifi"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/IndividualApps"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_4
    const-string v3, "/Settings/Connections/WiFi/Advanced/Hotspot20/Enabled"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_5
    const-string v3, "/Settings/Connections/LocationWifiScan"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :sswitch_6
    const-string v3, "/Settings/Connections/Location"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_1

    :sswitch_7
    const-string v3, "/Settings/Connections/Nfc"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto :goto_1

    :sswitch_8
    const-string v3, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Enabled"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_9
    const-string v3, "/Settings/Connections/WiFi/Advanced/Hotspot20/History"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_a
    const-string v3, "/Settings/Connections/WiFi/Advanced/WIPS"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_b
    const-string v3, "/Settings/Connections/LocationBluetoothScan"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    move v3, v6

    :goto_1
    packed-switch v3, :pswitch_data_0

    const-string v3, "ConnectionsItem"

    goto/16 :goto_3

    :pswitch_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v3, "beam"

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_4

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_DisableDefaultMWIPS"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v5

    const-string/jumbo v4, "wifi_mwips"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_4

    :pswitch_2
    const-string/jumbo v3, "wifi_hotspot20_connected_history"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_4

    :pswitch_3
    const-string/jumbo v3, "wifi_hotspot20_enable"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_4

    :pswitch_4
    const-string v3, "sem_auto_wifi_control_enabled"

    invoke-static {v1, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_4

    :pswitch_5
    const-string/jumbo v3, "wifi_switch_for_individual_apps_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_4

    :pswitch_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_4

    :pswitch_7
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v1, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_1

    const/4 v4, -0x1

    goto :goto_2

    :cond_1
    add-int/2addr v4, v3

    :goto_2
    move v3, v4

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_4

    :pswitch_8
    const-string v3, "ble_scan_always_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_4

    :pswitch_9
    const-string/jumbo v3, "wifi_scan_always_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_4

    :pswitch_a
    const-string v3, "location_providers_allowed"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_4

    :pswitch_b
    const-string v3, "location_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_4

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_4
    goto :goto_5

    :catch_0
    move-exception v3

    const-string v4, "ConnectionsItem"

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v2, v5, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a935241 -> :sswitch_b
        -0x780a8be1 -> :sswitch_a
        -0x615f49f8 -> :sswitch_9
        -0x446158e9 -> :sswitch_8
        -0x89bf4ec -> :sswitch_7
        0x6eb7ec -> :sswitch_6
        0xcfc73e -> :sswitch_5
        0x7705cb5 -> :sswitch_4
        0x35aff415 -> :sswitch_3
        0x532acc4e -> :sswitch_2
        0x5718286e -> :sswitch_1
        0x57b2d3ed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v2, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, -0x1

    const/4 v9, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "/Settings/Connections/LocationMethod"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v9

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Aggressive"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "/Settings/Connections/WiFi/Advanced/AutoWifi"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/IndividualApps"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_4
    const-string v4, "/Settings/Connections/WiFi/Advanced/Hotspot20/Enabled"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :sswitch_5
    const-string v4, "/Settings/Connections/LocationWifiScan"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_1

    :sswitch_6
    const-string v4, "/Settings/Connections/Location"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_1

    :sswitch_7
    const-string v4, "/Settings/Connections/Nfc"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xb

    goto :goto_1

    :sswitch_8
    const-string v4, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Enabled"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_9
    const-string v4, "/Settings/Connections/WiFi/Advanced/Hotspot20/History"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    goto :goto_1

    :sswitch_a
    const-string v4, "/Settings/Connections/WiFi/Advanced/WIPS"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xa

    goto :goto_1

    :sswitch_b
    const-string v4, "/Settings/Connections/LocationBluetoothScan"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    :goto_0
    move v4, v8

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v4, :cond_1

    const-string v4, "errorType"

    const-string v5, "FEATURE"

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v9, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_2
    const-string v4, "beam"

    invoke-virtual {p3, v4, v8}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    goto :goto_2

    :cond_4
    const-string v5, "errorType"

    const-string v6, "INVALID_DATA"

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v9, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v6}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_4

    :cond_5
    if-ne v5, v7, :cond_8

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_NFC_ConfigReaderModeUI"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KOREA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "CHINA"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    const-string v7, "errorType"

    const-string v8, "FEATURE"

    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v7}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    iget-object v7, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v7}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    :cond_8
    :goto_4
    goto/16 :goto_8

    :pswitch_1
    const-string/jumbo v4, "wifi_mwips"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_2
    const-string/jumbo v4, "wifi_hotspot20_connected_history"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_3
    const-string/jumbo v4, "wifi_hotspot20_enable"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_4
    const-string v4, "sem_auto_wifi_control_enabled"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v8, :cond_9

    const-string v4, "errorType"

    const-string v5, "FEATURE"

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    :cond_9
    const-string/jumbo v4, "wifi_switch_for_individual_apps_enabled"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v8, :cond_d

    const-string/jumbo v7, "vzw"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_6

    :cond_a
    const-string/jumbo v7, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v7, "wifi_iwc_user_data_preference"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_b

    const-string/jumbo v6, "wifi_iwc_user_data_preference"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_b
    if-ne v7, v9, :cond_c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_c

    const-string/jumbo v5, "wifi_iwc_user_data_preference"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_c
    const-string/jumbo v5, "wifi_iwc_user_data_preference"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_5
    const-string/jumbo v5, "wifi_iwc_transfer_started"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :cond_d
    :goto_6
    const-string v5, "errorType"

    const-string v6, "FEATURE"

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string/jumbo v5, "wifi_iwc_transfer_started"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :pswitch_7
    const-string/jumbo v4, "wifi_iwc_transfer_started"

    invoke-static {v0, v4, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v8, :cond_e

    const-string v4, "errorType"

    const-string v5, "FEATURE"

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_8

    :cond_e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v9, :cond_f

    add-int/lit8 v4, v4, -0x2

    const-string/jumbo v5, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_f
    if-gt v4, v9, :cond_11

    const-string/jumbo v5, "wifi_iwc_user_data_preference"

    if-ne v4, v9, :cond_10

    goto :goto_7

    :cond_10
    move v9, v3

    :goto_7
    invoke-static {v0, v5, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :pswitch_8
    const-string v4, "ble_scan_always_enabled"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :pswitch_9
    const-string/jumbo v4, "wifi_scan_always_enabled"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :pswitch_a
    const-string v4, "location_providers_allowed"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    :pswitch_b
    const-string v4, "location_mode"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :cond_11
    :goto_8
    goto :goto_9

    :catch_0
    move-exception v4

    const-string v5, "ConnectionsItem"

    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v3, v6, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    invoke-virtual {v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v3

    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x7a935241 -> :sswitch_b
        -0x780a8be1 -> :sswitch_a
        -0x615f49f8 -> :sswitch_9
        -0x446158e9 -> :sswitch_8
        -0x89bf4ec -> :sswitch_7
        0x6eb7ec -> :sswitch_6
        0xcfc73e -> :sswitch_5
        0x7705cb5 -> :sswitch_4
        0x35aff415 -> :sswitch_3
        0x532acc4e -> :sswitch_2
        0x5718286e -> :sswitch_1
        0x57b2d3ed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public Lcom/samsung/android/settings/bixby/actions/WifiP2pAction;
.super Ljava/lang/Object;
.source "WifiP2pAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WifiP2pAction"

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/actions/WifiP2pAction;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/actions/WifiP2pAction;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/actions/WifiP2pAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private gotoWifiP2pSetting()Ljava/lang/String;
    .locals 5

    const-string v0, "WifiP2pAction"

    const-string v1, "gotoWifiP2pSetting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiP2pSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "EXTRA_TRIGGER_APP"

    const-string v3, "bixby"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/bixby/actions/WifiP2pAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/WifiP2pAction;->isHotstpotEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "wifip2p_error_hotspot_enabled"

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "success"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "WifiP2pAction"

    const-string v4, "ActivityNotFoundException :: Can not found WifiP2pSettings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "not_supported_device"

    :goto_1
    return-object v0
.end method

.method private isHotstpotEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/actions/WifiP2pAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "WifiP2pAction"

    const-string v2, "mWifiManager is null, so hotspot checking is fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/actions/WifiP2pAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public doGotoAction()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/WifiP2pAction;->gotoWifiP2pSetting()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$3;
.super Ljava/lang/Object;
.source "AutoHotspotAllowedDeviceList.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotCustomPreference$AutoHotspotCustomPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClicked(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAutoHotspotCustomPreferenceListener`s onDeleteClicked() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceClicked(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAutoHotspotCustomPreferenceListener`s onPreferenceClicked() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;

    iget-object v1, v0, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceClick() - bleAddr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mac: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ssid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getInstance()Landroid/net/wifi/SemWifiApSmartWhiteList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceClick() - SemWifiApSmartWhiteList size("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getInstance()Landroid/net/wifi/SemWifiApSmartWhiteList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") <= MAX_ALLOWED_DEVICES("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "):"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getInstance()Landroid/net/wifi/SemWifiApSmartWhiteList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getSize()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v8, v7, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getInstance()Landroid/net/wifi/SemWifiApSmartWhiteList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/SemWifiApSmartWhiteList;->getSize()I

    move-result v5

    if-ge v5, v7, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$400(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$600(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$500(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;

    move-result-object v6

    invoke-virtual {v5, v2, v1, v6}, Landroid/net/wifi/WifiManager;->connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onPreferenceClick() - connectToSmartD2DClient() is not called as some other preference is in connecting state"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onPreferenceClick() - Already MAX allowed devices limit is reached"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121d9e

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v9

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$700(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method

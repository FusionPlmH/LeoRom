.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings$1;
.super Landroid/database/ContentObserver;
.source "WifiApWifiSharingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;->access$000(Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_wifi_sharing"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "WifiApWifiSharingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWifiSharingObserver WIFI_AP_WIFI_SHARING val "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;->access$100(Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;->access$100(Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_0
    return-void
.end method

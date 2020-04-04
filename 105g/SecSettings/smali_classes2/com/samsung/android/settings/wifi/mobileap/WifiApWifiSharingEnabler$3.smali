.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler$3;
.super Ljava/lang/Object;
.source "WifiApWifiSharingEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;->access$000(Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_wifi_sharing"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;->access$100(Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiSharingEnabled(Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;->access$300(Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;->access$400(Lcom/samsung/android/settings/wifi/mobileap/WifiApWifiSharingEnabler;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

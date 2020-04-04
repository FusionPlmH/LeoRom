.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22$3;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$4800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$5100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1000(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1500(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1102(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_pmf_checked"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_ap_powersave_mode_checked"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$22;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1700(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

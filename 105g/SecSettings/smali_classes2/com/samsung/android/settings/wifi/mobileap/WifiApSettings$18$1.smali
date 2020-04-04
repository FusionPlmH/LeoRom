.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$5000(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    goto/16 :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPBC:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORTMOBILEAPWPSPIN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$5100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$4600(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$4700(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1202(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1900(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_ap_5G_checked"

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->saveLast2gChannel(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->saveIsShowPassword()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$5200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSsid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$5300(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$5400(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1600(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    invoke-static {v0, v2, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$4800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiConfig.hiddenSSID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->removeAllConnectedDevice()V

    :cond_3
    sput-boolean v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$5500(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueChangedFlag()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setTimeoutValueChangedFlag(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1600(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1200(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    invoke-static {v0, v2, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$4800(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$5600(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$4600(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$1100(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep2Dialog()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$4902(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    return-void
.end method

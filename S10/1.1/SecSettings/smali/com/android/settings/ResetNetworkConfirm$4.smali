.class Lcom/android/settings/ResetNetworkConfirm$4;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetNetworkConfirm;->resetNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iput-object p2, p0, Lcom/android/settings/ResetNetworkConfirm$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$4;->val$context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const-string v1, "ResetNetworkConfirm"

    const-string v2, "ConnectivityManager Reset is started."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->factoryReset()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$4;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->access$700(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ResetNetworkConfirm"

    const-string v3, "WifiManager Reset is started."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->factoryReset()V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$4;->val$context:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_2

    const-string v3, "ResetNetworkConfirm"

    const-string v4, "TelephonyManager Reset is started."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v3}, Lcom/android/settings/ResetNetworkConfirm;->access$1100(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/ResetNetworkConfirm$4;->val$context:Landroid/content/Context;

    const-string v4, "netpolicy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicyManager;

    if-eqz v3, :cond_3

    const-string v4, "ResetNetworkConfirm"

    const-string v5, "NetworkPolicyManager Reset is started."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v4}, Lcom/android/settings/ResetNetworkConfirm;->access$1100(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$4;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v6}, Lcom/android/settings/ResetNetworkConfirm;->access$1100(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->resetTrafficSettings(I)V

    :cond_3
    iget-object v4, p0, Lcom/android/settings/ResetNetworkConfirm$4;->val$context:Landroid/content/Context;

    const-string v5, "bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothManager;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "ResetNetworkConfirm"

    const-string v7, "BluetoothManager Reset is started."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    :cond_4
    const-string v5, "ResetNetworkConfirm"

    const-string v6, "ImsManager Reset is started."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$4;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/ims/ImsManager;->factoryReset(Landroid/content/Context;)V

    const-string v5, "ResetNetworkConfirm"

    const-string v6, "restoreDefaultApn(context) is started."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v6, p0, Lcom/android/settings/ResetNetworkConfirm$4;->val$context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/android/settings/ResetNetworkConfirm;->access$1200(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    const-string v5, "ResetNetworkConfirm"

    const-string v6, "eSIM Reset is started."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v6, p0, Lcom/android/settings/ResetNetworkConfirm$4;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/ResetNetworkConfirm;->esimFactoryReset(Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "ResetNetworkConfirm"

    const-string v6, "Sms Raw table Reset is started."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v6, p0, Lcom/android/settings/ResetNetworkConfirm$4;->val$context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/android/settings/ResetNetworkConfirm;->access$1300(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v5}, Lcom/android/settings/ResetNetworkConfirm;->access$700(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v5}, Lcom/android/settings/ResetNetworkConfirm;->access$1000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    new-instance v6, Lcom/android/settings/ResetNetworkConfirm$4$1;

    invoke-direct {v6, p0}, Lcom/android/settings/ResetNetworkConfirm$4$1;-><init>(Lcom/android/settings/ResetNetworkConfirm$4;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    iget-object v5, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/settings/ResetNetworkConfirm;->access$1402(Lcom/android/settings/ResetNetworkConfirm;Z)Z

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "subId"

    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->access$1100(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v6}, Lcom/android/settings/ResetNetworkConfirm;->access$1000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.sec.android.settings.permission.NETWORK_RESET"

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v6, "ResetNetworkConfirm"

    const-string v7, "resetNetwork is done"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

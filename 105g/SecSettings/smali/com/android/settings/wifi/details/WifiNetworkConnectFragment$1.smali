.class Lcom/android/settings/wifi/details/WifiNetworkConnectFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiNetworkConnectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment$1;->this$0:Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNetworkConnectFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wificonnect>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const v4, -0x147b62d9

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    const-string v2, "WifiNetworkConnectFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BroadcastReceiver NETWORK_STATE_CHANGED_ACTION : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment$1;->this$0:Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->access$000(Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment$1;->this$0:Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;

    invoke-static {v4}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->access$100(Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;)Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "WifiNetworkConnectFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NETWORK_STATE_CHANGED_ACTION networkId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "WifiNetworkConnectFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NETWORK_STATE_CHANGED_ACTION getNetworkId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    if-ne v5, v6, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment$1;->this$0:Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->setProgressBarVisible(Z)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment$1;->this$0:Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;

    invoke-virtual {v5, v3}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->setProgressBarVisible(Z)V

    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment$1;->this$0:Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;

    invoke-virtual {v5, v3}, Lcom/android/settings/wifi/details/WifiNetworkConnectFragment;->setProgressBarVisible(Z)V

    :cond_6
    :goto_3
    return-void
.end method

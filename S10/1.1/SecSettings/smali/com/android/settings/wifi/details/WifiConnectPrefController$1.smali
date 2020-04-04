.class Lcom/android/settings/wifi/details/WifiConnectPrefController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiConnectPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectPrefController"

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

    const v3, -0x147b62d9

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    const v3, 0x41319010

    if-eq v2, v3, :cond_1

    const v3, 0x60e99352

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_1

    :cond_1
    const-string v2, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_2
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$300(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "WifiConnectPrefController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BroadcastReceiver NETWORK_STATE_CHANGED_ACTION : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$300(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    const-string v3, "WifiConnectPrefController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NETWORK_STATE_CHANGED_ACTION networkId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    iget-object v7, v7, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "WifiConnectPrefController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NETWORK_STATE_CHANGED_ACTION getNetworkId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    iget-object v3, v3, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    if-ne v3, v6, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$400(Lcom/android/settings/wifi/details/WifiConnectPrefController;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$500(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v3, v5}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$502(Lcom/android/settings/wifi/details/WifiConnectPrefController;Z)Z

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$700(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Lcom/samsung/android/settings/display/widget/ButtonPreference;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v5}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$600(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121dcb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/display/widget/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v3, v4}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$800(Lcom/android/settings/wifi/details/WifiConnectPrefController;Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v3, v4}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$900(Lcom/android/settings/wifi/details/WifiConnectPrefController;Z)V

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$300(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    const-string v5, "WifiConnectPrefController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NETWORK_STATE_CHANGED_ACTION ssid :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", networkId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    iget-object v5, v5, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    iput-object v4, v5, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v5

    const-string v6, "WifiConnectPrefController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NETWORK_STATE_CHANGED_ACTION getState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", networkStatus : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v7, v6}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$200(Lcom/android/settings/wifi/details/WifiConnectPrefController;I)V

    const-string v7, "WifiConnectPrefController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NETWORK_STATE_CHANGED_ACTION showErrorTextMsg ssid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", reason : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    goto/16 :goto_3

    :pswitch_1
    const-string v1, "info_type"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_9

    const-string v2, "network_id"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    iget-object v3, v3, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v2, :cond_7

    const-string v3, "reason"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "WifiConnectPrefController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SHOW_INFO_MESSAGE showErrorTextMsg ssid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    iget-object v6, v6, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", reason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v4, v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$200(Lcom/android/settings/wifi/details/WifiConnectPrefController;I)V

    :cond_7
    goto :goto_4

    :pswitch_2
    const-string v1, "multipleChanges"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "wifiConfiguration"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$000(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$000(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$100(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->setconfig(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiConnectPrefController$1;->this$0:Lcom/android/settings/wifi/details/WifiConnectPrefController;

    invoke-static {v3}, Lcom/android/settings/wifi/details/WifiConnectPrefController;->access$100(Lcom/android/settings/wifi/details/WifiConnectPrefController;)Lcom/android/settings/wifi/details/TempWifiConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/wifi/details/TempWifiConfiguration;->getConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/wifi/details/WifiConnectPrefController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_8
    nop

    :cond_9
    :goto_4
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

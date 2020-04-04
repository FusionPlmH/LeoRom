.class Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pDevicePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiP2pDevicePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v1, "wifi_p2p_state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->isInitialStickyBroadcast()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "wifi_p2p_state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->isInitialStickyBroadcast()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v2, "p2pGroupInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$902(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2$1;-><init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v2, "wifiP2pInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1102(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->isInitialStickyBroadcast()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1200(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->isInitialStickyBroadcast()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1300(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1

    :cond_5
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v2, "wifiP2pDevice"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1402(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_1

    :cond_6
    const-string v1, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    const-string v1, "requestState"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->isInitialStickyBroadcast()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v1, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1500(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    :cond_7
    goto :goto_1

    :cond_8
    const-string v1, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "info_type"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "WifiP2pDevicePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wi-Fi is not allowed by DPM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    :cond_9
    :goto_1
    return-void
.end method

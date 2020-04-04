.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "wifi_p2p_state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    const-string v1, "WifiP2pSettings"

    const-string v4, "WIFI_P2P_STATE_ENABLED"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1, v3, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v1, "wifi_p2p_state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_14

    const-string v1, "WifiP2pSettings"

    const-string v3, "WIFI_P2P_STATE_DISABLED"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$602(Z)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1, v2, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto/16 :goto_2

    :cond_8
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string v1, "p2pGroupInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$502(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$602(Z)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_2

    :cond_a
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const-string/jumbo v1, "wifiP2pInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    invoke-static {v1, v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$802(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v4, :cond_c

    const-string v1, "WifiP2pSettings"

    const-string v2, "connected!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto/16 :goto_1

    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v4, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v4, :cond_11

    :cond_d
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "WifiP2pSettings"

    const-string v4, "disconnected"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_e
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$502(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1, v3, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    :cond_f
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600()Z

    move-result v1

    xor-int/2addr v1, v3

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1, v3, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    :cond_10
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    :cond_11
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_2

    :cond_12
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "wifiP2pDevice"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1302(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_2

    :cond_13
    const-string v1, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "requestState"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v4

    if-nez v4, :cond_14

    if-nez v1, :cond_14

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v4, v3, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    :cond_14
    :goto_2
    return-void
.end method

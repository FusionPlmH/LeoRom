.class Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
.super Landroid/os/Handler;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    const-string v1, "WifiP2pManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :sswitch_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v2

    const-string/jumbo v3, "wpsPin"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;->onShowPinRequested(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$SemDialogListener;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$SemDialogListener;

    move-result-object v2

    const-string/jumbo v3, "wpsPin"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$SemDialogListener;->onShowPinRequested(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v2

    const-string/jumbo v3, "wifiP2pDevice"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string/jumbo v4, "wifiP2pConfig"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-interface {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;->onConnectionRequested(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$SemDialogListener;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$SemDialogListener;

    move-result-object v2

    const-string/jumbo v3, "wifiP2pDevice"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string/jumbo v4, "wifiP2pConfig"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-interface {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager$SemDialogListener;->onConnectionRequested(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto/16 :goto_1

    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;->onAttached()V

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$SemDialogListener;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$SemDialogListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/wifi/p2p/WifiP2pManager$SemDialogListener;->onAttached()V

    goto/16 :goto_1

    :sswitch_3
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;->onDetached(I)V

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$302(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;

    :cond_3
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$SemDialogListener;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$SemDialogListener;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager$SemDialogListener;->onDetached(I)V

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$402(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$SemDialogListener;)Landroid/net/wifi/p2p/WifiP2pManager$SemDialogListener;

    goto/16 :goto_1

    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_4

    if-eqz v0, :cond_7

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;

    invoke-interface {v1}, Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;->onConfigListUnavailable()V

    goto/16 :goto_1

    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pConfigList;

    if-eqz v0, :cond_5

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;

    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;->onConfigListAvailable(Landroid/net/wifi/p2p/WifiP2pConfigList;)V

    :cond_5
    goto/16 :goto_1

    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    const-string v2, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    nop

    :goto_0
    move-object v3, v0

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    invoke-interface {v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;->onHandoverMessageAvailable(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroupList;

    if-eqz v0, :cond_7

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;->onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    goto :goto_1

    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$200(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    goto :goto_1

    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_7

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_1

    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pInfo;

    if-eqz v0, :cond_7

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_1

    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    if-eqz v0, :cond_7

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_1

    :sswitch_b
    if-eqz v0, :cond_7

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-interface {v1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_1

    :sswitch_c
    if-eqz v0, :cond_7

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto :goto_1

    :sswitch_d
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$102(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    :cond_7
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_d
        0x22002 -> :sswitch_c
        0x22003 -> :sswitch_b
        0x22005 -> :sswitch_c
        0x22006 -> :sswitch_b
        0x22008 -> :sswitch_c
        0x22009 -> :sswitch_b
        0x2200b -> :sswitch_c
        0x2200c -> :sswitch_b
        0x2200e -> :sswitch_c
        0x2200f -> :sswitch_b
        0x22011 -> :sswitch_c
        0x22012 -> :sswitch_b
        0x22014 -> :sswitch_a
        0x22016 -> :sswitch_9
        0x22018 -> :sswitch_8
        0x2201d -> :sswitch_c
        0x2201e -> :sswitch_b
        0x22020 -> :sswitch_c
        0x22021 -> :sswitch_b
        0x22023 -> :sswitch_c
        0x22024 -> :sswitch_b
        0x22026 -> :sswitch_c
        0x22027 -> :sswitch_b
        0x22029 -> :sswitch_c
        0x2202a -> :sswitch_b
        0x2202c -> :sswitch_c
        0x2202d -> :sswitch_b
        0x2202f -> :sswitch_c
        0x22030 -> :sswitch_b
        0x22032 -> :sswitch_7
        0x22034 -> :sswitch_c
        0x22035 -> :sswitch_b
        0x22037 -> :sswitch_c
        0x22038 -> :sswitch_b
        0x2203a -> :sswitch_6
        0x2203c -> :sswitch_c
        0x2203d -> :sswitch_b
        0x2203f -> :sswitch_c
        0x22040 -> :sswitch_b
        0x22042 -> :sswitch_c
        0x22043 -> :sswitch_b
        0x22045 -> :sswitch_c
        0x22046 -> :sswitch_b
        0x22048 -> :sswitch_c
        0x22049 -> :sswitch_b
        0x2204d -> :sswitch_5
        0x22050 -> :sswitch_b
        0x22051 -> :sswitch_c
        0x22073 -> :sswitch_4
        0x22075 -> :sswitch_3
        0x22076 -> :sswitch_2
        0x22077 -> :sswitch_1
        0x22078 -> :sswitch_0
        0x22091 -> :sswitch_c
        0x22092 -> :sswitch_b
    .end sparse-switch
.end method

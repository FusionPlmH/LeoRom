.class Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$3;
.super Landroid/content/BroadcastReceiver;
.source "SmartNetworkSwitchPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$3;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$3;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->access$000(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;)V

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$3;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->access$000(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;)V

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController$3;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;->access$000(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchPrefController;)V

    :cond_5
    :goto_0
    return-void
.end method

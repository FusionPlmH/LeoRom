.class Lcom/samsung/android/settings/wifi/CharterWifiController$1;
.super Landroid/content/BroadcastReceiver;
.source "CharterWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/CharterWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/CharterWifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "CharterWifiController"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CharterWifiController"

    const-string v2, "Feature is not supported in other carriers..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/CharterWifiController;->access$000(Lcom/samsung/android/settings/wifi/CharterWifiController;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CharterWifiController"

    const-string v2, "SIM ABSENT detected!!! Turn off Charter\'s setting.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$1;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/CharterWifiController;->access$100(Lcom/samsung/android/settings/wifi/CharterWifiController;Z)V

    :cond_1
    return-void
.end method

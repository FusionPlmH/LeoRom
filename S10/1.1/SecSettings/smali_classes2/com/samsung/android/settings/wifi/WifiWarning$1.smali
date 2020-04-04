.class Lcom/samsung/android/settings/wifi/WifiWarning$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    const-string v2, "WifiWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userID :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$000(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v2

    const/16 v5, 0xe

    if-ne v2, v4, :cond_1

    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$100(Lcom/samsung/android/settings/wifi/WifiWarning;I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$000(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v2

    if-ne v2, v3, :cond_5

    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$200(Lcom/samsung/android/settings/wifi/WifiWarning;I)V

    goto :goto_1

    :cond_2
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$400(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v4, v6

    :goto_0
    invoke-static {v2, v4}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$302(Lcom/samsung/android/settings/wifi/WifiWarning;Z)Z

    goto :goto_1

    :cond_4
    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$000(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v2

    if-ne v2, v3, :cond_5

    const-string v2, "wifi_p2p_state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->access$500(Lcom/samsung/android/settings/wifi/WifiWarning;I)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string v2, "WifiWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "do nothing, action is null or Knox userID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

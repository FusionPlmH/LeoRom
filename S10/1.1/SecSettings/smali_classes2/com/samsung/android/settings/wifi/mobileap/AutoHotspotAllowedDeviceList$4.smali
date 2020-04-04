.class Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$4;
.super Landroid/content/BroadcastReceiver;
.source "AutoHotspotAllowedDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.d2dClientUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mReceiver`s onReceive() - Received SCAN_LIST_UPDATED_INTENT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$000(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V

    goto/16 :goto_2

    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$700(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hash_value_based_on_familyid"

    const-wide/16 v3, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "familyID is -1, so closing activity"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->finish()V

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$700(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mReceiver`s onReceive - fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mReceiver`s onReceive - powerManager.isInteractive() is true, Start scanning devices"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$800(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mReceiver`s onReceive - powerManager.isInteractive() is false, Stop scanning devices"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$900(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;)V

    :goto_1
    nop

    :cond_5
    :goto_2
    return-void
.end method

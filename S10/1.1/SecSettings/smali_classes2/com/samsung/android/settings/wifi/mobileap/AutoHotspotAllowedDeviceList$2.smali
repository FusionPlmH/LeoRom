.class Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$2;
.super Ljava/lang/Object;
.source "AutoHotspotAllowedDeviceList.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;


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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ILjava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemWifiApSmartCallback`s onStateChanged() - state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mhsMac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$200(Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    iput v3, v4, Landroid/os/Message;->what:I

    iput-object p2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v5, 0x2710

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    if-gez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SemWifiApSmartCallback`s onStateChanged() - found preference: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    iput v3, v5, Landroid/os/Message;->what:I

    iput-object p2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-lt p1, v1, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiApSmartCallback`s onStateChanged() - preference in connecting state "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f121884

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiApSmartCallback`s onStateChanged() - preference in disconnected state "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/AutoHotspotAllowedDeviceList;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiApSmartCallback`s onStateChanged() - preference not found "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

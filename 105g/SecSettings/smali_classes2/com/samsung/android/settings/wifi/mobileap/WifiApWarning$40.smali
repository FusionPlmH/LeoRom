.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->access$1000(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->access$1000(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-wide/16 v4, 0x258

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "WifiApWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error InterruptedException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->access$2900(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->access$3000(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "SAMSUNG_HOTSPOT"

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->access$3002(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->access$3000(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "WIFI_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->access$2800(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    return-void
.end method

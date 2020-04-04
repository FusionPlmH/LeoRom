.class Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;
.super Ljava/lang/Object;
.source "WifiApDialogSec.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiApDialogSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$2400(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0937

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$2302(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$2300(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiApDialogSec"

    const-string v1, "mWifiAp5gDoNotShowAgain  is Checked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$2100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$600(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT"

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$600(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$2102(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$2100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "WIFI_AP_5G_DO_NOTSHOW_AGAIN"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

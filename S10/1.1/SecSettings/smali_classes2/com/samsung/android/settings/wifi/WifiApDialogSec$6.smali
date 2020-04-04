.class Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;
.super Ljava/lang/Object;
.source "WifiApDialogSec.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showHideSsidWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$2000(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiApDialogSec"

    const-string v1, "mHideSsidDoNotShowAgain is Checked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$2100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$600(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT"

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$600(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$2102(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$2100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "HIDE_SSID_DO_NOTSHOW_AGAIN"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

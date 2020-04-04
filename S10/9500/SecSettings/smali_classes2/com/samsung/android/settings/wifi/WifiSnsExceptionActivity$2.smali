.class Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$2;
.super Ljava/lang/Object;
.source "WifiSnsExceptionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->showWifiSnsExceptionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$100(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$200(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;I)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v3, 0xc9

    iput v3, v1, Landroid/os/Message;->what:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "keep_connection"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "netId"

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$300(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$100(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v4, v2}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$402(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;Z)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiSnsExceptionActivity"

    const-string v3, "WifiManager is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$500(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$500(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_sns_dialog_for_starting_settings"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    return v2

    :cond_3
    return v0
.end method

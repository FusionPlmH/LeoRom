.class Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$2;
.super Ljava/lang/Object;
.source "WifiWcmKeepConnectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->showmWifiWcmKeepConnectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->access$100(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->access$200(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x134

    iput v2, v0, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "keep_connection"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "not_ask_again"

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->access$300(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "netId"

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->access$400(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->access$100(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiWcmKeepConnectActivity"

    const-string v2, "WifiManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;

    invoke-static {v0, v1, v1}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->access$500(Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;ZZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiWcmKeepConnectActivity;->finish()V

    return-void
.end method

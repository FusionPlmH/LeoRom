.class Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$3;
.super Ljava/lang/Object;
.source "WifiSnsExceptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$600(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$100(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xc9

    iput v2, v0, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "keep_connection"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0427

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$200(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;I)V

    const-string v3, "netId"

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$300(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$100(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v3, v6}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$402(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;Z)Z

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WifiSnsExceptionActivity"

    const-string v2, "WifiManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->access$500(Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_sns_dialog_for_starting_settings"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    return-void
.end method

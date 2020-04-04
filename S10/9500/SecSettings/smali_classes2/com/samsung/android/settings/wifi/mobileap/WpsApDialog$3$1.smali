.class Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3$1;
.super Ljava/lang/Object;
.source "WpsApDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$308(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$300(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)I

    move-result v0

    const/16 v1, 0x78

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$400(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121f4b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_FAILED:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$500(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$302(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;I)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$100(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$100(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$600(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;->WPS_COMPLETE:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$DialogState;

    if-eq v1, v2, :cond_1

    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v3, 0xca

    iput v3, v1, Landroid/os/Message;->what:I

    const-string v3, "cmd_type"

    const-string v4, "wps_cancel_int"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;->access$700(Lcom/samsung/android/settings/wifi/mobileap/WpsApDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WpsApDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error NullPointerException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

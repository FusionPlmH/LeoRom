.class Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GigaLteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GigaLteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MptcpStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GigaLteSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GigaLteSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MPTCPStateReceiver: onReceive action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.mptcp.MPTCP_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GigaLteSettings;->access$1000(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GigaLteSettings;->access$1000(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GigaLteSettings;->access$1300(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/GigaLteSettings;->access$1200(Lcom/samsung/android/settings/GigaLteSettings;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GigaLteSettings;->access$1000(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/GigaLteSettings;->access$300(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    const-string v1, "GigaLteSettings"

    const-string v4, "MPTCP State intent is received"

    invoke-static {v1, v4}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mptcp_state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/GigaLteSettings;->access$300(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/GigaLteSettings;->access$300(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const-string v2, "GigaLteSettings"

    const-string v4, "Cannot enable/disable MPTCP"

    invoke-static {v2, v4}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/GigaLteSettings;->access$300(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_0
    goto/16 :goto_2

    :cond_3
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x2

    if-ne v4, v1, :cond_4

    return-void

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v4, v1}, Lcom/samsung/android/settings/GigaLteSettings;->access$1400(Lcom/samsung/android/settings/GigaLteSettings;I)Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/GigaLteSettings;->access$400(Lcom/samsung/android/settings/GigaLteSettings;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/GigaLteSettings;->access$600(Lcom/samsung/android/settings/GigaLteSettings;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/GigaLteSettings;->access$602(Lcom/samsung/android/settings/GigaLteSettings;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/GigaLteSettings;->access$500(Lcom/samsung/android/settings/GigaLteSettings;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/GigaLteSettings;->access$402(Lcom/samsung/android/settings/GigaLteSettings;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/GigaLteSettings;->access$300(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/GigaLteSettings;->access$700(Lcom/samsung/android/settings/GigaLteSettings;Z)V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/GigaLteSettings;->access$600(Lcom/samsung/android/settings/GigaLteSettings;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v5, v3}, Lcom/samsung/android/settings/GigaLteSettings;->access$602(Lcom/samsung/android/settings/GigaLteSettings;Z)Z

    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/GigaLteSettings;->access$300(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/GigaLteSettings;->access$700(Lcom/samsung/android/settings/GigaLteSettings;Z)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/GigaLteSettings;->access$1000(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/GigaLteSettings;->access$1300(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->access$1200(Lcom/samsung/android/settings/GigaLteSettings;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/GigaLteSettings;->access$1000(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/GigaLteSettings;->access$300(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/GigaLteSettings;->access$300(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaLteSettings;->access$200(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mptcp_value"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    :cond_8
    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_9
    :goto_2
    return-void
.end method

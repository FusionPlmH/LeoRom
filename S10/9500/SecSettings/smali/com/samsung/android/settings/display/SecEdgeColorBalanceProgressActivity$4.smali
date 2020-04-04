.class Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;
.super Ljava/lang/Object;
.source "SecEdgeColorBalanceProgressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->finishReadEdgeColor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$000(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v2, "[stpoc] POC READ Success"

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$400(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipEdgeColorBalance(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SecEdgeColorBalanceProgressActivity"

    const-string v3, "[stpoc] D1 POC completed(isPocDream1NA)"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "D1_INDEX"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SEC_CASE_D1_INDEX"

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v2, "settings"

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    const-string v1, "SecEdgeColorBalanceProgressActivity"

    const-string v2, "[stpoc] D2 POC completed"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getEdgeColorBalanceUserIndexTemp(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$600(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$700(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$800(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;II)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$900(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string/jumbo v3, "sync"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v2, "SecEdgeColorBalanceProgressActivity"

    const-string v3, "[reset tracking] write to recovery_cause"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/sys/class/sec/sec_debug/recovery_cause"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v3, 0x0

    :try_start_4
    const-string v4, "[SETTING] SecEdgeColorBalanceProgressActivity - finishReadEdgeColor"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    if-eqz v3, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_2
    move-exception v5

    :try_start_8
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    :goto_2
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception v2

    :try_start_9
    const-string v3, "SecEdgeColorBalanceProgressActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException when writing /sys/class/sec/sec_debug/recovery_cause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v2, "recovery"

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    goto :goto_5

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$000(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    const-string v1, "[stpoc] POC READ Fail"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$200(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$4;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->finish()V

    :cond_3
    :goto_5
    return-void
.end method

.class Lcom/android/server/BatteryService$7$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$7;

.field final synthetic val$audiomode:I


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$7;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$7;

    iput p2, p0, Lcom/android/server/BatteryService$7$1;->val$audiomode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/android/server/BatteryService$7$1;->val$audiomode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$7;

    iget-object v0, v0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$7;

    iget-object v1, v1, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService$7$1;->val$audiomode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$7;

    iget-object v0, v0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$7;

    iget-object v0, v0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$7;

    iget-object v1, v1, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/BatteryService$7$1;->val$audiomode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$7;

    iget-object v0, v0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$7;

    iget-object v0, v0, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService$7$1;->this$1:Lcom/android/server/BatteryService$7;

    iget-object v1, v1, Lcom/android/server/BatteryService$7;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

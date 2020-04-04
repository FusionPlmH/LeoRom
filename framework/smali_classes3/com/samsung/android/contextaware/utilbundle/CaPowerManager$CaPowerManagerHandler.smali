.class final Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;
.super Landroid/os/Handler;
.source "CaPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaPowerManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1001

    if-ne v2, v3, :cond_0

    const-string v2, "context is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1002

    if-ne v2, v3, :cond_1

    const-string v2, "intent is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1003

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$102(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)Z

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "AP_SLEEP"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x2e

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$300(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->sendCurTimeToSensorHub()V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$202(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)Z

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-ne v2, v5, :cond_b

    const-string v2, "AP_SLEEP_Already_Delivered"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1004

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$202(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)Z

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "AP_WAKEUP"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x2f

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$300(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$102(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)Z

    goto/16 :goto_0

    :cond_4
    const-string v2, "AP_WAKEUP_Already_Delivered"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1007

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$402(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)Z

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$500(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$600(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    const-string v2, "SCREEN_ON"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$502(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)Z

    goto :goto_0

    :cond_6
    const-string v2, "SCREEN_ON_Already_Delivered"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1008

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$502(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)Z

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$400(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$600(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    const-string v2, "SCREEN_OFF"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$402(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)Z

    goto :goto_0

    :cond_8
    const-string v2, "SCREEN_OFF_Already_Delivered"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1005

    if-ne v2, v3, :cond_a

    const-string v2, "POWER_CONNECTED"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x2a

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$300(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_0

    :cond_a
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1006

    if-ne v2, v3, :cond_b

    const-string v2, "POWER_DISCONNECTED"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x29

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->access$300(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    :cond_b
    :goto_0
    return-void
.end method

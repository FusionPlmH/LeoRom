.class Lcom/android/server/BatteryService$37;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$5100(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$5700(Lcom/android/server/BatteryService;)J

    move-result-wide v1

    move-wide v3, v1

    iget-object v5, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)Z

    move-result v5

    const-wide/32 v6, 0xf4240

    if-eqz v5, :cond_0

    cmp-long v5, v3, v6

    if-gez v5, :cond_1

    add-long/2addr v3, v6

    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "!@ + 10000 cycle"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    cmp-long v5, v3, v6

    if-ltz v5, :cond_1

    sub-long/2addr v3, v6

    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "!@ - 10000 cycle"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/efs/FactoryApp/batt_discharge_level"

    invoke-static {v5, v6, v3, v4}, Lcom/android/server/BatteryService;->access$5400(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    invoke-static {}, Lcom/android/server/BatteryService;->access$5800()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/BatteryService$37;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/sys/class/power_supply/battery/battery_cycle"

    const-wide/16 v7, 0x64

    div-long v7, v3, v7

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/BatteryService;->access$5400(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class Lcom/android/server/EngineeringModeService$2;
.super Landroid/content/BroadcastReceiver;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EngineeringModeService;


# direct methods
.method constructor <init>(Lcom/android/server/EngineeringModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v0, "EngineeringModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast received:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.server.em.EM_SYNC_SERVER_DATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x1f

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/server/EngineeringModeService;->access$202(Lcom/android/server/EngineeringModeService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$300(Lcom/android/server/EngineeringModeService;)V

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$400(Lcom/android/server/EngineeringModeService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$000(Lcom/android/server/EngineeringModeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v6}, Lcom/android/server/EngineeringModeService;->access$000(Lcom/android/server/EngineeringModeService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "EngineeringModeService"

    const-string v4, "[EM] SYNC SERVER DATE - start"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-virtual {v0, v3}, Lcom/android/server/EngineeringModeService;->getStatus(I)I

    const-string v0, "EngineeringModeService"

    const-string v3, "[EM] SYNC SERVER DATE - checked"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$300(Lcom/android/server/EngineeringModeService;)V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v0, v4}, Lcom/android/server/EngineeringModeService;->access$502(Lcom/android/server/EngineeringModeService;Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.server.em.EM_SYNC_SERVER_DATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-static {}, Lcom/android/server/EngineeringModeService;->access$600()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x8000000

    const/4 v6, 0x0

    invoke-static {v0, v6, v5, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.android.server.em.EM_SYNC_TOKEN_STATE_TIMER"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v0

    invoke-static {}, Lcom/android/server/EngineeringModeService;->access$600()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v15, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Lcom/android/server/EngineeringModeService;->access$600()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/EngineeringModeService;->access$600()Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/AlarmManager;

    const/4 v8, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/32 v11, 0x5265c00

    move-object/from16 v7, v16

    move-object v13, v14

    invoke-virtual/range {v7 .. v13}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/32 v11, 0xdbba0

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$300(Lcom/android/server/EngineeringModeService;)V

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$400(Lcom/android/server/EngineeringModeService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_1
    invoke-static {}, Lcom/android/server/EngineeringModeService;->access$700()I

    move-result v0

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$000(Lcom/android/server/EngineeringModeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v3}, Lcom/android/server/EngineeringModeService;->access$000(Lcom/android/server/EngineeringModeService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$800(Lcom/android/server/EngineeringModeService;)V

    :cond_1
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_2
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$300(Lcom/android/server/EngineeringModeService;)V

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$400(Lcom/android/server/EngineeringModeService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_2
    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$000(Lcom/android/server/EngineeringModeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v6}, Lcom/android/server/EngineeringModeService;->access$000(Lcom/android/server/EngineeringModeService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "EngineeringModeService"

    const-string v4, "[EM] Boot completed - start"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-virtual {v0, v3}, Lcom/android/server/EngineeringModeService;->getStatus(I)I

    const-string v0, "EngineeringModeService"

    const-string v3, "[EM] Boot completed - checked"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$300(Lcom/android/server/EngineeringModeService;)V

    monitor-exit v5

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_3
    const-string v0, "com.android.server.em.EM_SYNC_TOKEN_STATE_TIMER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/EngineeringModeService$2;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-static {v0}, Lcom/android/server/EngineeringModeService;->access$300(Lcom/android/server/EngineeringModeService;)V

    :cond_4
    :goto_0
    return-void
.end method

.class Lcom/android/server/NSLocationMonitor$1;
.super Ljava/lang/Object;
.source "NSLocationMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NSLocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NSLocationMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/NSLocationMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MonitorService is connected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/android/server/NSLocationMonitor;->access$002(Lcom/android/server/NSLocationMonitor;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/NSLocationMonitor;->access$102(Lcom/android/server/NSLocationMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$200(Lcom/android/server/NSLocationMonitor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "systemRunning"

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v3}, Lcom/android/server/NSLocationMonitor;->access$300(Lcom/android/server/NSLocationMonitor;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "connectedHistory"

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v3}, Lcom/android/server/NSLocationMonitor;->access$200(Lcom/android/server/NSLocationMonitor;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v2, "disconnectedHistory"

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v3}, Lcom/android/server/NSLocationMonitor;->access$400(Lcom/android/server/NSLocationMonitor;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x1f4

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-virtual {v3, v2}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v3}, Lcom/android/server/NSLocationMonitor;->access$500(Lcom/android/server/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v4}, Lcom/android/server/NSLocationMonitor;->access$600(Lcom/android/server/NSLocationMonitor;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v4}, Lcom/android/server/NSLocationMonitor;->access$500(Lcom/android/server/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v5}, Lcom/android/server/NSLocationMonitor;->access$700(Lcom/android/server/NSLocationMonitor;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v7}, Lcom/android/server/NSLocationMonitor;->access$700(Lcom/android/server/NSLocationMonitor;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v8}, Lcom/android/server/NSLocationMonitor;->access$700(Lcom/android/server/NSLocationMonitor;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iget-object v4, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v4, v1}, Lcom/android/server/NSLocationMonitor;->access$602(Lcom/android/server/NSLocationMonitor;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v4, "NSLocationMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to register notification listener, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v1}, Lcom/android/server/NSLocationMonitor;->access$800(Lcom/android/server/NSLocationMonitor;)Lcom/android/server/NSLocationMonitor$ServiceCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/server/NSLocationMonitor$ServiceCallback;->onServiceConnected(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MonitorService has unexpectedly disconnected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/NSLocationMonitor;->access$102(Lcom/android/server/NSLocationMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/NSLocationMonitor;->access$002(Lcom/android/server/NSLocationMonitor;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$900(Lcom/android/server/NSLocationMonitor;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$1000(Lcom/android/server/NSLocationMonitor;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$1100(Lcom/android/server/NSLocationMonitor;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$1200(Lcom/android/server/NSLocationMonitor;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$400(Lcom/android/server/NSLocationMonitor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$500(Lcom/android/server/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v2}, Lcom/android/server/NSLocationMonitor;->access$600(Lcom/android/server/NSLocationMonitor;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v2}, Lcom/android/server/NSLocationMonitor;->access$500(Lcom/android/server/NSLocationMonitor;)Landroid/service/notification/NotificationListenerService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    iget-object v2, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v2, v1}, Lcom/android/server/NSLocationMonitor;->access$602(Lcom/android/server/NSLocationMonitor;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "NSLocationMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unregister notification listener, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$1;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$800(Lcom/android/server/NSLocationMonitor;)Lcom/android/server/NSLocationMonitor$ServiceCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/NSLocationMonitor$ServiceCallback;->onServiceDisconnected(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

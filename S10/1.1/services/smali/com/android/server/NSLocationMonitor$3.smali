.class Lcom/android/server/NSLocationMonitor$3;
.super Landroid/service/notification/NotificationListenerService;
.source "NSLocationMonitor.java"


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

    iput-object p1, p0, Lcom/android/server/NSLocationMonitor$3;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$3;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$600(Lcom/android/server/NSLocationMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NSLocationMonitor"

    const-string v1, "Notification listener is disconnected so do not set the trim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/NSLocationMonitor$3;->setOnNotificationPostedTrim(I)V

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "onListenerConnected for NotificationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x2bc

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor$3;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onListenerDisconnected()V
    .locals 2

    const-string v0, "NSLocationMonitor"

    const-string/jumbo v1, "onListenerDisconnected for NotificationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x2bd

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor$3;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x2be

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor$3;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x2bf

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/NSLocationMonitor$3;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/NSLocationMonitor;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

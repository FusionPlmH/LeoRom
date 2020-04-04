.class Landroid/app/BarBeamService$2;
.super Landroid/os/Handler;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BarBeamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/BarBeamService;


# direct methods
.method constructor <init>(Landroid/app/BarBeamService;)V
    .locals 0

    iput-object p1, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_2

    const-string v0, "BarBeamService"

    const-string v1, "Led in handler : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    invoke-static {v0}, Landroid/app/BarBeamService;->access$200(Landroid/app/BarBeamService;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    invoke-static {v0}, Landroid/app/BarBeamService;->access$200(Landroid/app/BarBeamService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/BarBeamService;->access$202(Landroid/app/BarBeamService;Ljava/util/Timer;)Ljava/util/Timer;

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    invoke-static {v0}, Landroid/app/BarBeamService;->access$300(Landroid/app/BarBeamService;)V

    iget-object v0, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    iget-object v0, v0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    iget-object v1, v1, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v2}, Landroid/app/BarBeamService$Listener;->onBeamingStoppped()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    iget-object v1, v1, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :goto_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_3

    const-string v0, "BarBeamService"

    const-string v1, "Led in handler : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    invoke-static {v0}, Landroid/app/BarBeamService;->access$400(Landroid/app/BarBeamService;)V

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_4

    const-string v0, "BarBeamService"

    const-string v1, "StopBeaming by no binder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/BarBeamService$2;->this$0:Landroid/app/BarBeamService;

    invoke-virtual {v0}, Landroid/app/BarBeamService;->stopBeaming()V

    :cond_4
    return-void
.end method

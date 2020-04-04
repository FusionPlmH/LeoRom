.class Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method getPackageNameFromPid(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_0

    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method getPidFromPackageName(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz p1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method getUidFromPackageName(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz p1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$1000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    invoke-static {v4, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$202(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/app/ActivityManager;)Landroid/app/ActivityManager;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v2, v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v4

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v8, v6

    invoke-virtual {v4, v5, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_2

    return-void

    :cond_2
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "MdnieScenarioControlService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " packageName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    className : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3402(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v5

    const/16 v7, 0x13

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v5

    const/16 v8, 0x14

    invoke-virtual {v5, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$2200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v5

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v10, v8

    invoke-virtual {v5, v7, v10, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    iput v6, v4, Landroid/os/Message;->what:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v4, Landroid/os/Message;->arg1:I

    iput v3, v4, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    return-void
.end method

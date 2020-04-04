.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$1;
.super Landroid/os/Handler;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->initSensorManager()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$1;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$1;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->access$600(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->access$500(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "SensorHubManager"

    const-string v3, "injectSensorData failed "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v1, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->mIsDone:Z

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

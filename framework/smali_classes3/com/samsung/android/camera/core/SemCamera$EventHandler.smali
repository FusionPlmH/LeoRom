.class Lcom/samsung/android/camera/core/SemCamera$EventHandler;
.super Landroid/os/Handler;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Lcom/samsung/android/camera/core/SemCamera;

.field final synthetic this$0:Lcom/samsung/android/camera/core/SemCamera;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    const-string v0, "SemCamera-JNI-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemCamera handleMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x400

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    packed-switch v0, :pswitch_data_7

    packed-switch v0, :pswitch_data_8

    packed-switch v0, :pswitch_data_9

    packed-switch v0, :pswitch_data_a

    packed-switch v0, :pswitch_data_b

    packed-switch v0, :pswitch_data_c

    packed-switch v0, :pswitch_data_d

    packed-switch v0, :pswitch_data_e

    packed-switch v0, :pswitch_data_f

    packed-switch v0, :pswitch_data_10

    packed-switch v0, :pswitch_data_11

    packed-switch v0, :pswitch_data_12

    packed-switch v0, :pswitch_data_13

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6f

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/samsung/android/camera/core/SemCamera$PostEventListener;->onHandleMessage(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    goto/16 :goto_41

    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6f

    if-eqz v0, :cond_5

    move-object v0, v5

    :try_start_3
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$1200(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$1300(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera;->mIrisIrQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    move-object v0, v3

    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: onIrisDataCallback irisIrFd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "Check if IrisIrCallback is Enabled or not"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$1200(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6f

    goto :goto_2

    :catchall_1
    move-exception v3

    goto :goto_5

    :catch_0
    move-exception v3

    :try_start_5
    const-string v4, "SemCamera-JNI-Java"

    const-string v5, "CAMERA_MSG_IRIS_DATA : onIrisDataCallback fail"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$1200(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6f

    nop

    if-eqz v0, :cond_4

    :try_start_7
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v0, v4}, Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;->onIrisDataCallback(Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/camera/core/SemCamera;)V

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6f

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_8
    const-string v4, "SemCamera-JNI-Java"

    const-string v5, "CAMERA_MSG_IRIS_DATA : "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_4
    :goto_3
    nop

    :goto_4
    goto/16 :goto_41

    :goto_5
    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v4}, Lcom/samsung/android/camera/core/SemCamera;->access$1200(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    :cond_5
    const-string v0, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mIrisDataCallback is null !!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6f

    :try_start_9
    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FLAW_DETECTION_RESULT("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/samsung/android/camera/core/SemCamera$PostEventListener;->onHandleMessage(IIILjava/lang/Object;)V

    goto :goto_6

    :cond_6
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "EventListener for scene detection is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    monitor-exit v0

    goto/16 :goto_41

    :catchall_2
    move-exception v3

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v3

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6f

    :try_start_b
    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCENE_DETECT_SHOT_SCENE_INFO("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4500(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SceneDetectionEventListener;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4500(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SceneDetectionEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$SceneDetectionEventListener;->onSceneDetectionResult(I)V

    goto :goto_7

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/samsung/android/camera/core/SemCamera$PostEventListener;->onHandleMessage(IIILjava/lang/Object;)V

    goto :goto_7

    :cond_8
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "EventListener for scene detection is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    monitor-exit v0

    goto/16 :goto_41

    :catchall_3
    move-exception v3

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v3

    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6f

    :try_start_d
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "SMART_FILTER_PARAMETERS_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$7400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$7400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$SmartFilterListener;->onParametersChanged([B)V

    goto :goto_8

    :cond_9
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mSmartFilterListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    monitor-exit v0

    goto/16 :goto_41

    :catchall_4
    move-exception v3

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v3

    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6f

    :try_start_f
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "SCREEN_FLASH_TAKEPICTURE_COMPLETED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$ScreenFlashEventListener;->onTakePictureCompleted()V

    goto :goto_9

    :cond_a
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mScreenFlashEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    monitor-exit v0

    goto/16 :goto_41

    :catchall_5
    move-exception v3

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    throw v3

    :sswitch_5
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1900(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6f

    :try_start_11
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2500(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2500(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$ExtraInfoListener;->onExtraInfo(IILcom/samsung/android/camera/core/SemCamera;)V

    :cond_b
    monitor-exit v0

    goto/16 :goto_41

    :catchall_6
    move-exception v3

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v3

    :sswitch_6
    const-string v0, "SemCamera-JNI-Java"

    const-string v3, "SAMSUNG_BURST_PANORAMA_SHOT_COMPRESSED_IMAGE"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_41

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6f

    :try_start_13
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaError(I)V

    :cond_d
    monitor-exit v0

    goto/16 :goto_41

    :catchall_7
    move-exception v3

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    throw v3

    :sswitch_7
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6f

    :try_start_15
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "HAZE_REMOVAL_SHOT_PROGRESS_POSTPROCESSING "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;->onHazeRemovalCapturingProgressed(II)V

    goto :goto_a

    :cond_e
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mHazeRemovalShotEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    monitor-exit v0

    goto/16 :goto_41

    :catchall_8
    move-exception v3

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :try_start_16
    throw v3

    :sswitch_8
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1900(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6f

    :try_start_17
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$LightConditionChangedListener;->onLightConditionChanged(I)V

    :cond_f
    monitor-exit v0

    goto/16 :goto_41

    :catchall_9
    move-exception v3

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    :try_start_18
    throw v3

    :sswitch_9
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6f

    :try_start_19
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4200(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4200(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    iget-object v6, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v4, v6}, Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;->onPreviewFrame([BLcom/samsung/android/camera/core/SemCamera;)V

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3, v5}, Lcom/samsung/android/camera/core/SemCamera;->access$4202(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    :cond_10
    monitor-exit v0

    goto/16 :goto_41

    :catchall_a
    move-exception v3

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    :try_start_1a
    throw v3

    :sswitch_a
    const-string v0, "SemCamera-JNI-Java"

    const-string v3, "SAMSUNG_SHOT_COMPRESSED_IMAGE"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_41

    :sswitch_b
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6f

    :try_start_1b
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BlurEffectEventListener;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BlurEffectEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$BlurEffectEventListener;->onNotifyProcessingProgress(I)V

    goto :goto_b

    :cond_11
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/samsung/android/camera/core/SemCamera$PostEventListener;->onHandleMessage(IIILjava/lang/Object;)V

    goto :goto_b

    :cond_12
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "EventListener for single blur effect is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    monitor-exit v0

    goto/16 :goto_41

    :catchall_b
    move-exception v3

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    :try_start_1c
    throw v3

    :sswitch_c
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6f

    :try_start_1d
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "STICKER_FACE_ALIGNMENT_DATA"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$7300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;

    move-result-object v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$7300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;->onFaceAlignmentData([B)V

    goto :goto_c

    :cond_13
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mStickerEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    monitor-exit v0

    goto/16 :goto_41

    :catchall_c
    move-exception v3

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    :try_start_1e
    throw v3

    :sswitch_d
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6f

    :try_start_1f
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3100(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;

    move-result-object v3

    if-eqz v3, :cond_14

    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "MULTI_FRAME_SHOT_PROGRESS_POSTPROCESSING "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3100(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$MultiFrameEventListener;->onMultiFrameCapturingProgressed(II)V

    goto :goto_d

    :cond_14
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mMultiFrameEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    monitor-exit v0

    goto/16 :goto_41

    :catchall_d
    move-exception v3

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    :try_start_20
    throw v3

    :sswitch_e
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6f

    :try_start_21
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "SLOW_MOTION_EVENT_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;

    move-result-object v3

    if-eqz v3, :cond_15

    new-instance v3, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    invoke-direct {v3, v4, v6, v5}, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;-><init>(Lcom/samsung/android/camera/core/SemCamera;[BLcom/samsung/android/camera/core/SemCamera$1;)V

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v4}, Lcom/samsung/android/camera/core/SemCamera;->access$6800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;->access$7000(Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventResult;)[Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/camera/core/SemCamera$SlowMotionEventListener;->onSlowMotionEventResult([Lcom/samsung/android/camera/core/SemCamera$SlowMotionEvent;)V

    nop

    goto :goto_e

    :cond_15
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mSlowMotionEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    monitor-exit v0

    goto/16 :goto_41

    :catchall_e
    move-exception v3

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_e

    :try_start_22
    throw v3

    :sswitch_f
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6f

    :try_start_23
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "FOOD_SHOT_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6500(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6500(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;->onFoodShotComplete([B)V

    goto :goto_f

    :cond_16
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mFoodShotEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    monitor-exit v0

    goto/16 :goto_41

    :catchall_f
    move-exception v3

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    :try_start_24
    throw v3

    :sswitch_10
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6f

    if-eqz v0, :cond_1a

    move-object v0, v5

    :try_start_25
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$1000(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$1100(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_18

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera;->mIrisPreviewQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    move-object v0, v3

    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: onIrisDataCallback irisPreviewFd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_17
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "Check if IrisPreviewCallback is Enabled or not"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_2
    .catchall {:try_start_25 .. :try_end_25} :catchall_10

    :cond_18
    :goto_10
    :try_start_26
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$1000(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6f

    goto :goto_11

    :catchall_10
    move-exception v3

    goto :goto_14

    :catch_2
    move-exception v3

    :try_start_27
    const-string v4, "SemCamera-JNI-Java"

    const-string v5, "CAMERA_MSG_IRIS_PREVIEW_DATA : onIrisDataCallback fail"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    :try_start_28
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$1000(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_6f

    nop

    if-eqz v0, :cond_19

    :try_start_29
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v0, v4}, Lcom/samsung/android/camera/core/SemCamera$IrisDataCallback;->onIrisDataCallback(Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/camera/core/SemCamera;)V

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3
    .catchall {:try_start_29 .. :try_end_29} :catchall_6f

    goto :goto_12

    :catch_3
    move-exception v3

    :try_start_2a
    const-string v4, "SemCamera-JNI-Java"

    const-string v5, "CAMERA_MSG_IRIS_PREVIEW_DATA : "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_19
    :goto_12
    nop

    :goto_13
    goto/16 :goto_41

    :goto_14
    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v4}, Lcom/samsung/android/camera/core/SemCamera;->access$1000(Lcom/samsung/android/camera/core/SemCamera;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    :cond_1a
    const-string v0, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mIrisDataCallback is null !!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    :sswitch_11
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1500(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_6f

    :try_start_2b
    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v5}, Lcom/samsung/android/camera/core/SemCamera;->access$2400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;

    move-result-object v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v5}, Lcom/samsung/android/camera/core/SemCamera;->access$2400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_1b

    move v3, v4

    nop

    :cond_1b
    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v5, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLcom/samsung/android/camera/core/SemCamera;)V

    :cond_1c
    monitor-exit v0

    goto/16 :goto_41

    :catchall_11
    move-exception v3

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    :try_start_2c
    throw v3

    :sswitch_12
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1900(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_6f

    :try_start_2d
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2100(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Lcom/samsung/android/camera/core/SemCamera$Face;

    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$FaceDetectionListener;->onFaceDetection([Lcom/samsung/android/camera/core/SemCamera$Face;Lcom/samsung/android/camera/core/SemCamera;)V

    goto :goto_15

    :cond_1d
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "Error : face object is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_15
    monitor-exit v0

    goto/16 :goto_41

    :catchall_12
    move-exception v3

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_12

    :try_start_2e
    throw v3

    :sswitch_13
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_41

    :sswitch_14
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$200(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$200(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_41

    :sswitch_15
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_6f

    goto/16 :goto_41

    :sswitch_16
    :try_start_2f
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_22

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/camera/core/SemCamera$TimeStampFrame;

    iget-object v6, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v6}, Lcom/samsung/android/camera/core/SemCamera;->access$400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;

    move-result-object v6

    if-eqz v6, :cond_21

    iget-object v7, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v7}, Lcom/samsung/android/camera/core/SemCamera;->access$500(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v7

    if-eqz v7, :cond_1f

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3, v5}, Lcom/samsung/android/camera/core/SemCamera;->access$602(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    goto :goto_16

    :cond_1f
    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v5}, Lcom/samsung/android/camera/core/SemCamera;->access$700(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v5

    if-nez v5, :cond_20

    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v5, v3, v4, v4}, Lcom/samsung/android/camera/core/SemCamera;->access$800(Lcom/samsung/android/camera/core/SemCamera;ZZZ)V

    :cond_20
    :goto_16
    iget-object v3, v0, Lcom/samsung/android/camera/core/SemCamera$TimeStampFrame;->FrameData:[B

    iget-wide v4, v0, Lcom/samsung/android/camera/core/SemCamera$TimeStampFrame;->timeStamp:J

    iget-object v7, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v6, v3, v4, v5, v7}, Lcom/samsung/android/camera/core/SemCamera$PreviewCallbackTimeStamp;->onPreviewFrame([BJLcom/samsung/android/camera/core/SemCamera;)V

    :cond_21
    goto :goto_18

    :cond_22
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v6, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v6}, Lcom/samsung/android/camera/core/SemCamera;->access$500(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v6

    if-eqz v6, :cond_23

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3, v5}, Lcom/samsung/android/camera/core/SemCamera;->access$602(Lcom/samsung/android/camera/core/SemCamera;Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;)Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;

    goto :goto_17

    :cond_23
    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v5}, Lcom/samsung/android/camera/core/SemCamera;->access$700(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v5

    if-nez v5, :cond_24

    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v5, v3, v4, v4}, Lcom/samsung/android/camera/core/SemCamera;->access$800(Lcom/samsung/android/camera/core/SemCamera;ZZZ)V

    :cond_24
    :goto_17
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;->onPreviewFrame([BLcom/samsung/android/camera/core/SemCamera;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_4
    .catchall {:try_start_2f .. :try_end_2f} :catchall_6f

    :cond_25
    :goto_18
    goto/16 :goto_41

    :catch_4
    move-exception v0

    :try_start_30
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "CAMERA_MSG_PREVIEW_FRAME"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41

    :sswitch_17
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1700(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_6f

    :try_start_31
    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v5}, Lcom/samsung/android/camera/core/SemCamera;->access$1800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;

    move-result-object v5

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v5}, Lcom/samsung/android/camera/core/SemCamera;->access$1800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_26

    goto :goto_19

    :cond_26
    move v3, v4

    :goto_19
    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v5, v6, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$OnZoomChangeListener;->onZoomChange(IZLcom/samsung/android/camera/core/SemCamera;)V

    :cond_27
    monitor-exit v0

    goto/16 :goto_41

    :catchall_13
    move-exception v3

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_13

    :try_start_32
    throw v3

    :sswitch_18
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$1500(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_6f

    :try_start_33
    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v4}, Lcom/samsung/android/camera/core/SemCamera;->access$1600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;

    move-result-object v4

    move-object v0, v4

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_14

    if-eqz v0, :cond_8d

    :try_start_34
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;->onAutoFocus(ILcom/samsung/android/camera/core/SemCamera;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_6f

    goto/16 :goto_41

    :catchall_14
    move-exception v4

    :try_start_35
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_14

    :try_start_36
    throw v4

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_6f

    :try_start_37
    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DUAL_PORTRAIT_SHOT_PROCESS_COMPLETED("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualPortraitEventListener;

    move-result-object v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualPortraitEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$DualPortraitEventListener;->onCaptureCompleted(I)V

    goto :goto_1a

    :cond_28
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mDualPortraitEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    monitor-exit v0

    goto/16 :goto_41

    :catchall_15
    move-exception v3

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_15

    :try_start_38
    throw v3

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_6f

    :try_start_39
    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DUAL_PORTRAIT_SHOT_PROCESSING_PROGRESS("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualPortraitEventListener;

    move-result-object v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualPortraitEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$DualPortraitEventListener;->onNotifyProcessingProgress(II)V

    goto :goto_1b

    :cond_29
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mDualPortraitEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    monitor-exit v0

    goto/16 :goto_41

    :catchall_16
    move-exception v3

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_16

    :try_start_3a
    throw v3

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_6f

    :try_start_3b
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$7200(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualDepthEventListener;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$7200(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualDepthEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$DualDepthEventListener;->onFocusedObjectDistance(I)V

    goto :goto_1c

    :cond_2a
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mDualDepthEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    monitor-exit v0

    goto/16 :goto_41

    :catchall_17
    move-exception v3

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_17

    :try_start_3c
    throw v3

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_6f

    :try_start_3d
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$7200(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualDepthEventListener;

    move-result-object v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$7200(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualDepthEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$DualDepthEventListener;->onDepthMapData([B)V

    goto :goto_1d

    :cond_2b
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mDualDepthEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    monitor-exit v0

    goto/16 :goto_41

    :catchall_18
    move-exception v3

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_18

    :try_start_3e
    throw v3

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_6f

    :try_start_3f
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$7100(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;

    move-result-object v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$7100(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$DepthMapEventListener;->onDepthMapData([B)V

    goto :goto_1e

    :cond_2c
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mDepthMapEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    monitor-exit v0

    goto/16 :goto_41

    :catchall_19
    move-exception v3

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_19

    :try_start_40
    throw v3

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_6f

    :try_start_41
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "COMMON_SHOT_PREVIEW_STARTED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    move-result-object v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;->onPreviewStarted()V

    goto :goto_1f

    :cond_2d
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mCommonEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    monitor-exit v0

    goto/16 :goto_41

    :catchall_1a
    move-exception v3

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_1a

    :try_start_42
    throw v3

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_6f

    :try_start_43
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "COMMON_SHOT_CANCEL_PICTURE_COMPLETED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    move-result-object v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$CommonEventListener;->onTakePictureCanceled()V

    goto :goto_20

    :cond_2e
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mCommonEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    monitor-exit v0

    goto/16 :goto_41

    :catchall_1b
    move-exception v3

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_1b

    :try_start_44
    throw v3

    :pswitch_7
    const-string v0, "SemCamera-JNI-Java"

    const-string v3, "WIDE_MOTION_SELFIE_SHOT_PROCESS_COMPLETE"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_6f

    :try_start_45
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieCompleted()V

    goto :goto_21

    :cond_2f
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mWideMotionSelfieEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    monitor-exit v0

    goto/16 :goto_41

    :catchall_1c
    move-exception v3

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_1c

    :try_start_46
    throw v3

    :pswitch_8
    const-string v0, "SemCamera-JNI-Java"

    const-string v3, "WIDE_MOTION_SELFIE_SHOT_SINGLE_CAPTURE_DONE"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_6f

    :try_start_47
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieSingleCaptureDone()V

    goto :goto_22

    :cond_30
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mWideMotionSelfieEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    monitor-exit v0

    goto/16 :goto_41

    :catchall_1d
    move-exception v3

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_1d

    :try_start_48
    throw v3

    :pswitch_9
    const-string v0, "SemCamera-JNI-Java"

    const-string v3, "WIDE_MOTION_SELFIE_SHOT_NEXT_CAPTURE_POSITION"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_6f

    :try_start_49
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieNextCapturePosition(II)V

    goto :goto_23

    :cond_31
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mWideMotionSelfieEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    monitor-exit v0

    goto/16 :goto_41

    :catchall_1e
    move-exception v3

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_1e

    :try_start_4a
    throw v3

    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_6f

    :try_start_4b
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieSlowMove()V

    :cond_32
    monitor-exit v0

    goto/16 :goto_41

    :catchall_1f
    move-exception v3

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_1f

    :try_start_4c
    throw v3

    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_6f

    :try_start_4d
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieCapturedMaxFrames()V

    :cond_33
    monitor-exit v0

    goto/16 :goto_41

    :catchall_20
    move-exception v3

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_20

    :try_start_4e
    throw v3

    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_6f

    :try_start_4f
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieLivePreviewData([B)V

    :cond_34
    monitor-exit v0

    goto/16 :goto_41

    :catchall_21
    move-exception v3

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_21

    :try_start_50
    throw v3

    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_6f

    :try_start_51
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieDirectionChanged(I)V

    :cond_35
    monitor-exit v0

    goto/16 :goto_41

    :catchall_22
    move-exception v3

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_22

    :try_start_52
    throw v3

    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_6f

    :try_start_53
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieCaptured()V

    :cond_36
    monitor-exit v0

    goto/16 :goto_41

    :catchall_23
    move-exception v3

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_23

    :try_start_54
    throw v3

    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_6f

    :try_start_55
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieProgressStitching(I)V

    :cond_37
    monitor-exit v0

    goto/16 :goto_41

    :catchall_24
    move-exception v3

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_24

    :try_start_56
    throw v3

    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_6f

    :try_start_57
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieCapturedNew()V

    :cond_38
    monitor-exit v0

    goto/16 :goto_41

    :catchall_25
    move-exception v3

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_25

    :try_start_58
    throw v3

    :pswitch_11
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_6f

    :try_start_59
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieRectChanged([B)V

    :cond_39
    monitor-exit v0

    goto/16 :goto_41

    :catchall_26
    move-exception v3

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_26

    :try_start_5a
    throw v3

    :pswitch_12
    const-string v0, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIDE_MOTION_SELFIE_SHOT_ERR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_6f

    :try_start_5b
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$WideMotionSelfieEventListener;->onWideMotionSelfieError(I)V

    :cond_3a
    monitor-exit v0

    goto/16 :goto_41

    :catchall_27
    move-exception v3

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_27

    :try_start_5c
    throw v3

    :pswitch_13
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_6f

    :try_start_5d
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaSlowMove()V

    :cond_3b
    monitor-exit v0

    goto/16 :goto_41

    :catchall_28
    move-exception v3

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_28

    :try_start_5e
    throw v3

    :pswitch_14
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_6f

    :try_start_5f
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaCapturedMaxFrames()V

    :cond_3c
    monitor-exit v0

    goto/16 :goto_41

    :catchall_29
    move-exception v3

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_29

    :try_start_60
    throw v3

    :pswitch_15
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_6f

    :try_start_61
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaUiImageData([B)V

    :cond_3d
    monitor-exit v0

    goto/16 :goto_41

    :catchall_2a
    move-exception v3

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_2a

    :try_start_62
    throw v3

    :pswitch_16
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_6f

    :try_start_63
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaLivePreviewData([B)V

    :cond_3e
    monitor-exit v0

    goto/16 :goto_41

    :catchall_2b
    move-exception v3

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_2b

    :try_start_64
    throw v3

    :pswitch_17
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_6f

    :try_start_65
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaThumbnailData([B)V

    :cond_3f
    monitor-exit v0

    goto/16 :goto_41

    :catchall_2c
    move-exception v3

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_2c

    :try_start_66
    throw v3

    :pswitch_18
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_6f

    :try_start_67
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaDirectionChanged(I)V

    :cond_40
    monitor-exit v0

    goto/16 :goto_41

    :catchall_2d
    move-exception v3

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_2d

    :try_start_68
    throw v3

    :pswitch_19
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_6f

    :try_start_69
    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v5}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v5

    if-eqz v5, :cond_42

    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v5}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_41

    goto :goto_24

    :cond_41
    move v3, v4

    :goto_24
    invoke-interface {v5, v3}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaCaptureResult(Z)V

    :cond_42
    monitor-exit v0

    goto/16 :goto_41

    :catchall_2e
    move-exception v3

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_2e

    :try_start_6a
    throw v3

    :pswitch_1a
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_6f

    :try_start_6b
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaCaptured()V

    :cond_43
    monitor-exit v0

    goto/16 :goto_41

    :catchall_2f
    move-exception v3

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_2f

    :try_start_6c
    throw v3

    :pswitch_1b
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_6f

    :try_start_6d
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaProgressStitching(I)V

    :cond_44
    monitor-exit v0

    goto/16 :goto_41

    :catchall_30
    move-exception v3

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_30

    :try_start_6e
    throw v3

    :pswitch_1c
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_6f

    :try_start_6f
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaRectChanged(II)V

    :cond_45
    monitor-exit v0

    goto/16 :goto_41

    :catchall_31
    move-exception v3

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_31

    :try_start_70
    throw v3

    :pswitch_1d
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_6f

    :try_start_71
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$MotionPanoramaEventListener;->onMotionPanoramaError(I)V

    :cond_46
    monitor-exit v0

    goto/16 :goto_41

    :catchall_32
    move-exception v3

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_32

    :try_start_72
    throw v3

    :pswitch_1e
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_6f

    :try_start_73
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "INTERACTIVE_SHOT_PROCESS_COMPLETE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_47

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveProcessCompleted()V

    goto :goto_25

    :cond_47
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mInteractiveShotEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    monitor-exit v0

    goto/16 :goto_41

    :catchall_33
    move-exception v3

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_33

    :try_start_74
    throw v3

    :pswitch_1f
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_6f

    :try_start_75
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "INTERACTIVE_SHOT_PROCESS_PROGRESS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveProcessProgressed(II)V

    goto :goto_26

    :cond_48
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mInteractiveShotEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    monitor-exit v0

    goto/16 :goto_41

    :catchall_34
    move-exception v3

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_34

    :try_start_76
    throw v3

    :pswitch_20
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_6f

    :try_start_77
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "INTERACTIVE_SHOT_CAPTURE_PROGRESS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveCaptureProgressed(II)V

    goto :goto_27

    :cond_49
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mInteractiveShotEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    monitor-exit v0

    goto/16 :goto_41

    :catchall_35
    move-exception v3

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_35

    :try_start_78
    throw v3

    :pswitch_21
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_6f

    :try_start_79
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "INTERACTIVE_SHOT_DIRECTION_WARNING"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveDirectionWarning(I)V

    goto :goto_28

    :cond_4a
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mInteractiveShotEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    monitor-exit v0

    goto/16 :goto_41

    :catchall_36
    move-exception v3

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_36

    :try_start_7a
    throw v3

    :pswitch_22
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_6f

    :try_start_7b
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "INTERACTIVE_SHOT_DIRECTION_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$InteractiveShotEventListener;->onInteractiveDirectionChanged(II)V

    goto :goto_29

    :cond_4b
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mInteractiveShotEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    monitor-exit v0

    goto/16 :goto_41

    :catchall_37
    move-exception v3

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_37

    :try_start_7c
    throw v3

    :pswitch_23
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1900(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_6f

    :try_start_7d
    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BRIGHTNESS_VALUE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    int-to-float v5, v5

    const/high16 v6, 0x43800000    # 256.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6100(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;

    move-result-object v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6100(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$BrightnessValueCallback;->onBrightnessValue(F)V

    goto :goto_2a

    :cond_4c
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mBrightnessValueCallback is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    monitor-exit v0

    goto/16 :goto_41

    :catchall_38
    move-exception v3

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_38

    :try_start_7e
    throw v3

    :pswitch_24
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1900(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_6f

    :try_start_7f
    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AE_RESULT("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;

    move-result-object v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;->onAutoExposure(I)V

    goto :goto_2b

    :cond_4d
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mAutoExposureCallback is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    monitor-exit v0

    goto/16 :goto_41

    :catchall_39
    move-exception v3

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_39

    :try_start_80
    throw v3

    :pswitch_25
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1900(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_6f

    :try_start_81
    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "METADATA_BURSTSHOT_FPS_CHANGED("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6200(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;

    move-result-object v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6200(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$BurstShotFpsCallback;->onBurstShotFpsChanged(I)V

    goto :goto_2c

    :cond_4e
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mBurstShotFpsCallback is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    monitor-exit v0

    goto/16 :goto_41

    :catchall_3a
    move-exception v3

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_3a

    :try_start_82
    throw v3

    :pswitch_26
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1900(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_6f

    :try_start_83
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;

    move-result-object v3

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;->onMultiAutoFocus([B)V

    goto :goto_2d

    :cond_4f
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mMultiAutoFocusCallback is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    monitor-exit v0

    goto/16 :goto_41

    :catchall_3b
    move-exception v3

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_3b

    :try_start_84
    throw v3

    :pswitch_27
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1900(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_6f

    :try_start_85
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "METADATA_OBJECT_TRACKING_AF"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;

    move-result-object v3

    if-eqz v3, :cond_50

    new-instance v3, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-direct {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;-><init>([B)V

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v4}, Lcom/samsung/android/camera/core/SemCamera;->access$5700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;->onObjectTrackingAutoFocus(Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;)V

    nop

    goto :goto_2e

    :cond_50
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mObjectTrackingAutoFocusCallback is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    monitor-exit v0

    goto/16 :goto_41

    :catchall_3c
    move-exception v3

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_3c

    :try_start_86
    throw v3

    :pswitch_28
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1900(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_6f

    :try_start_87
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;

    move-result-object v3

    if-eqz v3, :cond_51

    new-instance v3, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-direct {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;-><init>([B)V

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v4}, Lcom/samsung/android/camera/core/SemCamera;->access$4800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;->onCameraSensorData(Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;)V

    nop

    goto :goto_2f

    :cond_51
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mCameraSensorDataListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    monitor-exit v0

    goto/16 :goto_41

    :catchall_3d
    move-exception v3

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_3d

    :try_start_88
    throw v3

    :pswitch_29
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1900(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_6f

    :try_start_89
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;

    move-result-object v3

    if-eqz v3, :cond_52

    new-instance v3, Lcom/samsung/android/camera/core/SemCamera$PafResult;

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    invoke-direct {v3, v4, v6, v5}, Lcom/samsung/android/camera/core/SemCamera$PafResult;-><init>(Lcom/samsung/android/camera/core/SemCamera;[BLcom/samsung/android/camera/core/SemCamera$1;)V

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v4}, Lcom/samsung/android/camera/core/SemCamera;->access$4900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;

    move-result-object v5

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera$PafResult;->access$5100(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S

    move-result v6

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera$PafResult;->access$5200(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S

    move-result v7

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera$PafResult;->access$5300(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S

    move-result v8

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera$PafResult;->access$5400(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S

    move-result v9

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera$PafResult;->access$5500(Lcom/samsung/android/camera/core/SemCamera$PafResult;)S

    move-result v10

    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;->onPhaseAutoFocus(SSSSS)V

    nop

    :cond_52
    monitor-exit v0

    goto/16 :goto_41

    :catchall_3e
    move-exception v3

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_3e

    :try_start_8a
    throw v3

    :pswitch_2a
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_6f

    :try_start_8b
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;->onShotAndMoreApplicableMode(I)V

    :cond_53
    monitor-exit v0

    goto/16 :goto_41

    :catchall_3f
    move-exception v3

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_3f

    :try_start_8c
    throw v3

    :pswitch_2b
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_6f

    :try_start_8d
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;->onShotAndMoreComplete()V

    :cond_54
    monitor-exit v0

    goto/16 :goto_41

    :catchall_40
    move-exception v3

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_40

    :try_start_8e
    throw v3

    :pswitch_2c
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_6f

    :try_start_8f
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v3

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;->onShotAndMoreProcessProgress(II)V

    :cond_55
    monitor-exit v0

    goto/16 :goto_41

    :catchall_41
    move-exception v3

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_41

    :try_start_90
    throw v3

    :pswitch_2d
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_6f

    :try_start_91
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4600(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$ShotAndMoreEventListener;->onShotAndMoreCaptureProgress(II)V

    :cond_56
    monitor-exit v0

    goto/16 :goto_41

    :catchall_42
    move-exception v3

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_42

    :try_start_92
    throw v3

    :pswitch_2e
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_6f

    :try_start_93
    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OUTFOCUS_SHOT_PROCESS_COMPLETE("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v3

    if-eqz v3, :cond_5d

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_57

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x3

    if-ne v4, v5, :cond_58

    :cond_57
    const/4 v3, -0x1

    :cond_58
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_59

    const/4 v3, -0x2

    :cond_59
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_5a

    const/4 v3, -0x4

    :cond_5a
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_5b

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x4

    if-ne v4, v5, :cond_5c

    :cond_5b
    const/4 v3, -0x3

    :cond_5c
    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v4}, Lcom/samsung/android/camera/core/SemCamera;->access$4300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;->onSelectiveFocusComplete(I)V

    goto :goto_30

    :cond_5d
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mSelectiveFocusEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    monitor-exit v0

    goto/16 :goto_41

    :catchall_43
    move-exception v3

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_43

    :try_start_94
    throw v3

    :pswitch_2f
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_6f

    :try_start_95
    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OUTFOCUS_SHOT_CAPTURE_PROGRESS("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;->onSelectiveFocusCaptureProgress(II)V

    goto :goto_31

    :cond_5e
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mSelectiveFocusEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    monitor-exit v0

    goto/16 :goto_41

    :catchall_44
    move-exception v3

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_44

    :try_start_96
    throw v3

    :pswitch_30
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_6f

    :try_start_97
    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OUTFOCUS_SHOT_PROCESS_PROGRESS("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v3

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$SelectiveFocusEventListener;->onSelectiveFocusProcessProgress(II)V

    goto :goto_32

    :cond_5f
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mSelectiveFocusEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    monitor-exit v0

    goto/16 :goto_41

    :catchall_45
    move-exception v3

    monitor-exit v0
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_45

    :try_start_98
    throw v3

    :pswitch_31
    const-string v0, "SemCamera-JNI-Java"

    const-string v3, "SAMSUNG_WIDE_SELFIE_SHOT_COMPRESSED_IMAGE"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_41

    :cond_60
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_6f

    :try_start_99
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_61

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieError(I)V

    :cond_61
    monitor-exit v0

    goto/16 :goto_41

    :catchall_46
    move-exception v3

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_46

    :try_start_9a
    throw v3

    :pswitch_32
    const-string v0, "SemCamera-JNI-Java"

    const-string v3, "WIDE_SELFIE_SHOT_SINGLE_CAPTURE_DONE"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_6f

    :try_start_9b
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieSingleCaptureDone()V

    goto :goto_33

    :cond_62
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mWideSelfieEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    monitor-exit v0

    goto/16 :goto_41

    :catchall_47
    move-exception v3

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_47

    :try_start_9c
    throw v3

    :pswitch_33
    const-string v0, "SemCamera-JNI-Java"

    const-string v3, "WIDE_SELFIE_SHOT_NEXT_CAPTURE_POSITION"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_6f

    :try_start_9d
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_63

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieNextCapturePosition(II)V

    goto :goto_34

    :cond_63
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mWideSelfieEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    monitor-exit v0

    goto/16 :goto_41

    :catchall_48
    move-exception v3

    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_48

    :try_start_9e
    throw v3

    :pswitch_34
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_6f

    :try_start_9f
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_64

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieSlowMove()V

    :cond_64
    monitor-exit v0

    goto/16 :goto_41

    :catchall_49
    move-exception v3

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_49

    :try_start_a0
    throw v3

    :pswitch_35
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_6f

    :try_start_a1
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_65

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieCapturedMaxFrames()V

    :cond_65
    monitor-exit v0

    goto/16 :goto_41

    :catchall_4a
    move-exception v3

    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_4a

    :try_start_a2
    throw v3

    :pswitch_36
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_6f

    :try_start_a3
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieLivePreviewData([B)V

    :cond_66
    monitor-exit v0

    goto/16 :goto_41

    :catchall_4b
    move-exception v3

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_4b

    :try_start_a4
    throw v3

    :pswitch_37
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_a4
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_6f

    :try_start_a5
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_67

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieLowResolutionData([B)V

    :cond_67
    monitor-exit v0

    goto/16 :goto_41

    :catchall_4c
    move-exception v3

    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_4c

    :try_start_a6
    throw v3

    :pswitch_38
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_a6
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_6f

    :try_start_a7
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieDirectionChanged(I)V

    :cond_68
    monitor-exit v0

    goto/16 :goto_41

    :catchall_4d
    move-exception v3

    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_4d

    :try_start_a8
    throw v3

    :pswitch_39
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_a8
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_6f

    :try_start_a9
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_69

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieCaptured()V

    :cond_69
    monitor-exit v0

    goto/16 :goto_41

    :catchall_4e
    move-exception v3

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_4e

    :try_start_aa
    throw v3

    :pswitch_3a
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_aa
    .catchall {:try_start_aa .. :try_end_aa} :catchall_6f

    :try_start_ab
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_6a

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieProgressStitching(I)V

    :cond_6a
    monitor-exit v0

    goto/16 :goto_41

    :catchall_4f
    move-exception v3

    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_ab .. :try_end_ab} :catchall_4f

    :try_start_ac
    throw v3

    :pswitch_3b
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_ac
    .catchall {:try_start_ac .. :try_end_ac} :catchall_6f

    :try_start_ad
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_6b

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieCapturedNew()V

    :cond_6b
    monitor-exit v0

    goto/16 :goto_41

    :catchall_50
    move-exception v3

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_ad .. :try_end_ad} :catchall_50

    :try_start_ae
    throw v3

    :pswitch_3c
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_ae
    .catchall {:try_start_ae .. :try_end_ae} :catchall_6f

    :try_start_af
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_6c

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieRectChanged([B)V

    :cond_6c
    monitor-exit v0

    goto/16 :goto_41

    :catchall_51
    move-exception v3

    monitor-exit v0
    :try_end_af
    .catchall {:try_start_af .. :try_end_af} :catchall_51

    :try_start_b0
    throw v3

    :pswitch_3d
    const-string v0, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIDE_SELFIE_SHOT_ERR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_b0
    .catchall {:try_start_b0 .. :try_end_b0} :catchall_6f

    :try_start_b1
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    if-eqz v3, :cond_6d

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$5800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$WideSelfieEventListener;->onWideSelfieError(I)V

    :cond_6d
    monitor-exit v0

    goto/16 :goto_41

    :catchall_52
    move-exception v3

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_b1 .. :try_end_b1} :catchall_52

    :try_start_b2
    throw v3

    :pswitch_3e
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_b2
    .catchall {:try_start_b2 .. :try_end_b2} :catchall_6f

    :try_start_b3
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "SINGLE_SHOT_QRCODE_DETECT_EXTENDED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v3

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3800(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PostEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/samsung/android/camera/core/SemCamera$PostEventListener;->onHandleMessage(IIILjava/lang/Object;)V

    goto :goto_35

    :cond_6e
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mPostEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    monitor-exit v0

    goto/16 :goto_41

    :catchall_53
    move-exception v3

    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_b3 .. :try_end_b3} :catchall_53

    :try_start_b4
    throw v3

    :pswitch_3f
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_b4
    .catchall {:try_start_b4 .. :try_end_b4} :catchall_6f

    :try_start_b5
    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SINGLE_SHOT_QRCODE_DETECT_ERR("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    move-result-object v3

    if-eqz v3, :cond_6f

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;->onQrCodeDetectionError(I)V

    goto :goto_36

    :cond_6f
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mQrCodeDetectionEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36
    monitor-exit v0

    goto/16 :goto_41

    :catchall_54
    move-exception v3

    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_b5 .. :try_end_b5} :catchall_54

    :try_start_b6
    throw v3

    :pswitch_40
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_b6
    .catchall {:try_start_b6 .. :try_end_b6} :catchall_6f

    :try_start_b7
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "SINGLE_SHOT_QRCODE_DETECT"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    move-result-object v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$6400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$QrCodeDetectionEventListener;->onQrCodeDetection([BLcom/samsung/android/camera/core/SemCamera;)V

    goto :goto_37

    :cond_70
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mQrCodeDetectionEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    monitor-exit v0

    goto/16 :goto_41

    :catchall_55
    move-exception v3

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b7 .. :try_end_b7} :catchall_55

    :try_start_b8
    throw v3

    :pswitch_41
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_b8
    .catchall {:try_start_b8 .. :try_end_b8} :catchall_6f

    :try_start_b9
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    move-result-object v3

    if-eqz v3, :cond_71

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$DualEventListener;->onDualTrackingAvailable(I)V

    :cond_71
    monitor-exit v0

    goto/16 :goto_41

    :catchall_56
    move-exception v3

    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_b9 .. :try_end_b9} :catchall_56

    :try_start_ba
    throw v3

    :pswitch_42
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_ba
    .catchall {:try_start_ba .. :try_end_ba} :catchall_6f

    :try_start_bb
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4100(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;

    move-result-object v3

    if-eqz v3, :cond_72

    new-instance v3, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v4}, Lcom/samsung/android/camera/core/SemCamera;->access$4100(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;->onImageEffectInfo(Ljava/lang/String;)V

    nop

    :cond_72
    monitor-exit v0

    goto/16 :goto_41

    :catchall_57
    move-exception v3

    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_bb .. :try_end_bb} :catchall_57

    :try_start_bc
    throw v3

    :pswitch_43
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_bc
    .catchall {:try_start_bc .. :try_end_bc} :catchall_6f

    :try_start_bd
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    move-result-object v3

    if-eqz v3, :cond_73

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$4000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$DualEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$DualEventListener;->onDualCaptureAvailable(I)V

    :cond_73
    monitor-exit v0

    goto/16 :goto_41

    :catchall_58
    move-exception v3

    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_bd .. :try_end_bd} :catchall_58

    :try_start_be
    throw v3

    :pswitch_44
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_be
    .catchall {:try_start_be .. :try_end_be} :catchall_6f

    :try_start_bf
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "BEAUTY_SHOT_RELIGHT_TRANSFORM_DATA"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;

    move-result-object v3

    if-eqz v3, :cond_74

    new-instance v3, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    invoke-direct {v3, v4, v6, v5}, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;-><init>(Lcom/samsung/android/camera/core/SemCamera;[BLcom/samsung/android/camera/core/SemCamera$1;)V

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v4}, Lcom/samsung/android/camera/core/SemCamera;->access$3400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->access$3600(Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;)[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;->onRelightTransformDataUpdated([Lcom/samsung/android/camera/core/SemCamera$TransformData;)V

    nop

    goto :goto_38

    :cond_74
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mRelightEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    monitor-exit v0

    goto/16 :goto_41

    :catchall_59
    move-exception v3

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_bf .. :try_end_bf} :catchall_59

    :try_start_c0
    throw v3

    :pswitch_45
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1900(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_c0
    .catchall {:try_start_c0 .. :try_end_c0} :catchall_6f

    :try_start_c1
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;

    move-result-object v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2100(Lcom/samsung/android/camera/core/SemCamera;)Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_75

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Lcom/samsung/android/camera/core/SemCamera$Face;

    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$HardwareFaceDetectionListener;->onHardwareFaceDetection([Lcom/samsung/android/camera/core/SemCamera$Face;Lcom/samsung/android/camera/core/SemCamera;)V

    goto :goto_39

    :cond_75
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "Error : face object is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_76
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mHardwareFaceDetectionListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    monitor-exit v0

    goto/16 :goto_41

    :catchall_5a
    move-exception v3

    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_c1 .. :try_end_c1} :catchall_5a

    :try_start_c2
    throw v3

    :pswitch_46
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_c2
    .catchall {:try_start_c2 .. :try_end_c2} :catchall_6f

    :try_start_c3
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3200(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;

    move-result-object v3

    if-eqz v3, :cond_77

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3200(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$BeautyEventListener;->onBeautySavingProgress(I)V

    goto :goto_3a

    :cond_77
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mBeautyEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    monitor-exit v0

    goto/16 :goto_41

    :catchall_5b
    move-exception v3

    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_c3 .. :try_end_c3} :catchall_5b

    :try_start_c4
    throw v3

    :pswitch_47
    const-string v0, "SemCamera-JNI-Java"

    const-string v3, "BURST_SHOT_POSTVIEW_DATA"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$1400(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PictureCallback;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V

    goto/16 :goto_41

    :cond_78
    const-string v0, "SemCamera-JNI-Java"

    const-string/jumbo v3, "mPostviewCallback is null !!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    :pswitch_48
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_c4
    .catchall {:try_start_c4 .. :try_end_c4} :catchall_6f

    :try_start_c5
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "BURST_SHOT_FILE_STRING"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v3

    if-eqz v3, :cond_79

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;->onBurstStringProgressed([B)V

    goto :goto_3b

    :cond_79
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mBurstEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    monitor-exit v0

    goto/16 :goto_41

    :catchall_5c
    move-exception v3

    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_c5 .. :try_end_c5} :catchall_5c

    :try_start_c6
    throw v3

    :pswitch_49
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_c6
    .catchall {:try_start_c6 .. :try_end_c6} :catchall_6f

    :try_start_c7
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "BURST_SHOT_SAVING_COMPLETED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;->onBurstSavingCompleted(I)V

    goto :goto_3c

    :cond_7a
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mBurstEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    monitor-exit v0

    goto/16 :goto_41

    :catchall_5d
    move-exception v3

    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_c7 .. :try_end_c7} :catchall_5d

    :try_start_c8
    throw v3

    :pswitch_4a
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_c8
    .catchall {:try_start_c8 .. :try_end_c8} :catchall_6f

    :try_start_c9
    const-string v3, "SemCamera-JNI-Java"

    const-string v4, "BURST_SHOT_CAPTURING_STOPPED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v3

    if-eqz v3, :cond_7b

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;->onBurstCapturingStopped(I)V

    goto :goto_3d

    :cond_7b
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mBurstEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    monitor-exit v0

    goto/16 :goto_41

    :catchall_5e
    move-exception v3

    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_c9 .. :try_end_c9} :catchall_5e

    :try_start_ca
    throw v3

    :pswitch_4b
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_ca
    .catchall {:try_start_ca .. :try_end_ca} :catchall_6f

    :try_start_cb
    const-string v3, "SemCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BURST_SHOT_CAPTURING_PROGRESSED("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v3

    if-eqz v3, :cond_7c

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$3000(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$BurstEventListener;->onBurstCapturingProgressed(II)V

    goto :goto_3e

    :cond_7c
    const-string v3, "SemCamera-JNI-Java"

    const-string/jumbo v4, "mBurstEventListener is null !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    monitor-exit v0

    goto/16 :goto_41

    :catchall_5f
    move-exception v3

    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_cb .. :try_end_cb} :catchall_5f

    :try_start_cc
    throw v3

    :pswitch_4c
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_cc
    .catchall {:try_start_cc .. :try_end_cc} :catchall_6f

    :try_start_cd
    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v5}, Lcom/samsung/android/camera/core/SemCamera;->access$2900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v5

    if-eqz v5, :cond_7e

    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v5}, Lcom/samsung/android/camera/core/SemCamera;->access$2900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_7d

    goto :goto_3f

    :cond_7d
    move v3, v4

    :goto_3f
    invoke-interface {v5, v3}, Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;->onHdrAllProgressCompleted(Z)V

    :cond_7e
    monitor-exit v0

    goto/16 :goto_41

    :catchall_60
    move-exception v3

    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_cd .. :try_end_cd} :catchall_60

    :try_start_ce
    throw v3

    :pswitch_4d
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_ce
    .catchall {:try_start_ce .. :try_end_ce} :catchall_6f

    :try_start_cf
    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v5}, Lcom/samsung/android/camera/core/SemCamera;->access$2900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v5

    if-eqz v5, :cond_80

    iget-object v5, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v5}, Lcom/samsung/android/camera/core/SemCamera;->access$2900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_7f

    goto :goto_40

    :cond_7f
    move v3, v4

    :goto_40
    invoke-interface {v5, v3}, Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;->onHdrResultCompleted(Z)V

    :cond_80
    monitor-exit v0

    goto/16 :goto_41

    :catchall_61
    move-exception v3

    monitor-exit v0
    :try_end_cf
    .catchall {:try_start_cf .. :try_end_cf} :catchall_61

    :try_start_d0
    throw v3

    :pswitch_4e
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_d0
    .catchall {:try_start_d0 .. :try_end_d0} :catchall_6f

    :try_start_d1
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v3

    if-eqz v3, :cond_81

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;->onHdrResultProgress(I)V

    :cond_81
    monitor-exit v0

    goto/16 :goto_41

    :catchall_62
    move-exception v3

    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_d1 .. :try_end_d1} :catchall_62

    :try_start_d2
    throw v3

    :pswitch_4f
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_d2
    .catchall {:try_start_d2 .. :try_end_d2} :catchall_6f

    :try_start_d3
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v3

    if-eqz v3, :cond_82

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2900(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$HdrEventListener;->onHdrResultStarted()V

    :cond_82
    monitor-exit v0

    goto/16 :goto_41

    :catchall_63
    move-exception v3

    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_d3 .. :try_end_d3} :catchall_63

    :try_start_d4
    throw v3

    :pswitch_50
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_d4
    .catchall {:try_start_d4 .. :try_end_d4} :catchall_6f

    :try_start_d5
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_83

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaSlowMove()V

    :cond_83
    monitor-exit v0

    goto/16 :goto_41

    :catchall_64
    move-exception v3

    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_d5 .. :try_end_d5} :catchall_64

    :try_start_d6
    throw v3

    :pswitch_51
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_d6
    .catchall {:try_start_d6 .. :try_end_d6} :catchall_6f

    :try_start_d7
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_84

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaCapturedMaxFrames()V

    :cond_84
    monitor-exit v0

    goto/16 :goto_41

    :catchall_65
    move-exception v3

    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_d7 .. :try_end_d7} :catchall_65

    :try_start_d8
    throw v3

    :pswitch_52
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_d8
    .catchall {:try_start_d8 .. :try_end_d8} :catchall_6f

    :try_start_d9
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaLivePreviewData([B)V

    :cond_85
    monitor-exit v0

    goto/16 :goto_41

    :catchall_66
    move-exception v3

    monitor-exit v0
    :try_end_d9
    .catchall {:try_start_d9 .. :try_end_d9} :catchall_66

    :try_start_da
    throw v3

    :pswitch_53
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_da
    .catchall {:try_start_da .. :try_end_da} :catchall_6f

    :try_start_db
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_86

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaLowResolutionData([B)V

    :cond_86
    monitor-exit v0

    goto/16 :goto_41

    :catchall_67
    move-exception v3

    monitor-exit v0
    :try_end_db
    .catchall {:try_start_db .. :try_end_db} :catchall_67

    :try_start_dc
    throw v3

    :pswitch_54
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_dc
    .catchall {:try_start_dc .. :try_end_dc} :catchall_6f

    :try_start_dd
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_87

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaDirectionChanged(I)V

    :cond_87
    monitor-exit v0

    goto/16 :goto_41

    :catchall_68
    move-exception v3

    monitor-exit v0
    :try_end_dd
    .catchall {:try_start_dd .. :try_end_dd} :catchall_68

    :try_start_de
    throw v3

    :pswitch_55
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_de
    .catchall {:try_start_de .. :try_end_de} :catchall_6f

    :try_start_df
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_88

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaCaptured()V

    :cond_88
    monitor-exit v0

    goto/16 :goto_41

    :catchall_69
    move-exception v3

    monitor-exit v0
    :try_end_df
    .catchall {:try_start_df .. :try_end_df} :catchall_69

    :try_start_e0
    throw v3

    :pswitch_56
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_e0
    .catchall {:try_start_e0 .. :try_end_e0} :catchall_6f

    :try_start_e1
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_89

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaProgressStitching(I)V

    :cond_89
    monitor-exit v0

    goto/16 :goto_41

    :catchall_6a
    move-exception v3

    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_e1 .. :try_end_e1} :catchall_6a

    :try_start_e2
    throw v3

    :pswitch_57
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_e2
    .catchall {:try_start_e2 .. :try_end_e2} :catchall_6f

    :try_start_e3
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaCapturedNew()V

    :cond_8a
    monitor-exit v0

    goto/16 :goto_41

    :catchall_6b
    move-exception v3

    monitor-exit v0
    :try_end_e3
    .catchall {:try_start_e3 .. :try_end_e3} :catchall_6b

    :try_start_e4
    throw v3

    :pswitch_58
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_e4
    .catchall {:try_start_e4 .. :try_end_e4} :catchall_6f

    :try_start_e5
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_8b

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaRectChanged(II)V

    :cond_8b
    monitor-exit v0

    goto :goto_41

    :catchall_6c
    move-exception v3

    monitor-exit v0
    :try_end_e5
    .catchall {:try_start_e5 .. :try_end_e5} :catchall_6c

    :try_start_e6
    throw v3

    :pswitch_59
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$2600(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_e6
    .catchall {:try_start_e6 .. :try_end_e6} :catchall_6f

    :try_start_e7
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_8c

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2700(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/samsung/android/camera/core/SemCamera$PanoramaEventListener;->onPanoramaError(I)V

    :cond_8c
    monitor-exit v0

    goto :goto_41

    :catchall_6d
    move-exception v3

    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_e7 .. :try_end_e7} :catchall_6d

    :try_start_e8
    throw v3

    :pswitch_5a
    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$100(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;

    move-result-object v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v0}, Lcom/samsung/android/camera/core/SemCamera;->access$100(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/camera/core/SemCamera$ShutterCallback;->onShutter()V

    goto :goto_41

    :pswitch_5b
    const-string v0, "SemCamera-JNI-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v3}, Lcom/samsung/android/camera/core/SemCamera;->access$2200(Lcom/samsung/android/camera/core/SemCamera;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_e8
    .catchall {:try_start_e8 .. :try_end_e8} :catchall_6f

    :try_start_e9
    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-static {v4}, Lcom/samsung/android/camera/core/SemCamera;->access$2300(Lcom/samsung/android/camera/core/SemCamera;)Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;

    move-result-object v4

    move-object v0, v4

    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_e9 .. :try_end_e9} :catchall_6e

    if-eqz v0, :cond_8d

    :try_start_ea
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/samsung/android/camera/core/SemCamera$EventHandler;->mCamera:Lcom/samsung/android/camera/core/SemCamera;

    invoke-interface {v0, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$ErrorCallback;->onError(ILcom/samsung/android/camera/core/SemCamera;)V
    :try_end_ea
    .catchall {:try_start_ea .. :try_end_ea} :catchall_6f

    :cond_8d
    :goto_41
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_6e
    move-exception v4

    :try_start_eb
    monitor-exit v3
    :try_end_eb
    .catchall {:try_start_eb .. :try_end_eb} :catchall_6e

    :try_start_ec
    throw v4
    :try_end_ec
    .catchall {:try_start_ec .. :try_end_ec} :catchall_6f

    :catchall_6f
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_5a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf021
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf081
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf091
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xf151
        :pswitch_46
        :pswitch_45
        :pswitch_44
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xf251
        :pswitch_43
        :pswitch_42
        :pswitch_41
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xf274
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xf301
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xf310
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xf321
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0xf331
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0xf341
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0xf351
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0xf361
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0xf381
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0xf391
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0xf398
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0xf411
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0xf441
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0xf451
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_18
        0x8 -> :sswitch_17
        0x10 -> :sswitch_16
        0x40 -> :sswitch_15
        0x80 -> :sswitch_14
        0x100 -> :sswitch_13
        0x400 -> :sswitch_12
        0x800 -> :sswitch_11
        0x8000 -> :sswitch_10
        0xf041 -> :sswitch_f
        0xf051 -> :sswitch_e
        0xf123 -> :sswitch_d
        0xf141 -> :sswitch_c
        0xf161 -> :sswitch_b
        0xf201 -> :sswitch_a
        0xf203 -> :sswitch_9
        0xf232 -> :sswitch_8
        0xf281 -> :sswitch_7
        0xf291 -> :sswitch_6
        0xf401 -> :sswitch_5
        0xf421 -> :sswitch_4
        0xf431 -> :sswitch_3
        0xf461 -> :sswitch_2
        0xf471 -> :sswitch_1
        0x10000 -> :sswitch_0
    .end sparse-switch
.end method

.class Landroid/media/MediaPlayer$4;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$fFormat:Landroid/media/MediaFormat;

.field final synthetic val$fIs:Ljava/io/InputStream;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$4;->val$fIs:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/media/MediaPlayer$4;->val$fFormat:Landroid/media/MediaFormat;

    iput-object p4, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTrack()I
    .locals 9

    iget-object v0, p0, Landroid/media/MediaPlayer$4;->val$fIs:Ljava/io/InputStream;

    const/16 v1, 0x385

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaPlayer$4;->val$fFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v2}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :try_start_0
    new-instance v5, Ljava/util/Scanner;

    iget-object v6, p0, Landroid/media/MediaPlayer$4;->val$fIs:Ljava/io/InputStream;

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v2, v5

    const-string v5, "\\A"

    invoke-virtual {v2, v5}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v4, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v6

    monitor-enter v6

    :try_start_1
    iget-object v4, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v4

    iget-object v7, p0, Landroid/media/MediaPlayer$4;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v4, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    iget-object v4, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v4

    monitor-enter v4

    :try_start_2
    iget-object v6, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v6}, Landroid/media/MediaPlayer;->access$400(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v6

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaPlayer$TimeProvider;->access$600(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v3

    nop

    nop

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v4, v7, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v8, 0x323

    return v8

    :catch_0
    move-exception v3

    const-string v4, "MediaPlayer"

    const-string v6, "handleMessage is NullPointerException e : "

    invoke-static {v4, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_6
    const-string v5, "MediaPlayer"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    nop

    iget-object v5, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v5}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    monitor-enter v5

    :try_start_7
    iget-object v6, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v6}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v6

    iget-object v7, p0, Landroid/media/MediaPlayer$4;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_2
    return v1

    :catchall_3
    move-exception v1

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v1

    :goto_0
    iget-object v3, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v3

    monitor-enter v3

    :try_start_9
    iget-object v5, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v5}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    iget-object v6, p0, Landroid/media/MediaPlayer$4;->val$fIs:Ljava/io/InputStream;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_3
    throw v1

    :catchall_4
    move-exception v1

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-direct {p0}, Landroid/media/MediaPlayer$4;->addTrack()I

    move-result v0

    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v2}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v1, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

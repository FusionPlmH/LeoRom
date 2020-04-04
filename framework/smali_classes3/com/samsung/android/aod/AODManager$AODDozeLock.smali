.class public final Lcom/samsung/android/aod/AODManager$AODDozeLock;
.super Ljava/lang/Object;
.source "AODManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/AODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AODDozeLock"
.end annotation


# instance fields
.field private mHeld:Z

.field private final mPackageName:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/samsung/android/aod/AODManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/aod/AODManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->this$0:Lcom/samsung/android/aod/AODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->mTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->mPackageName:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->this$0:Lcom/samsung/android/aod/AODManager;

    iget-object v1, v1, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    const-string v3, "AODManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireDoze: skip due to state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->this$0:Lcom/samsung/android/aod/AODManager;

    invoke-static {v3}, Lcom/samsung/android/aod/AODManager;->access$000(Lcom/samsung/android/aod/AODManager;)Lcom/samsung/android/aod/IAODManager;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->mTag:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v7}, Lcom/samsung/android/aod/IAODManager;->acquireDoze(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v5, "AODManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AODDozeLock RuntimeException?\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->mHeld:Z

    nop

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isHeld()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->mHeld:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public newAODDozeLock(Ljava/lang/String;)Lcom/samsung/android/aod/AODManager$AODDozeLock;
    .locals 3

    new-instance v0, Lcom/samsung/android/aod/AODManager$AODDozeLock;

    iget-object v1, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->this$0:Lcom/samsung/android/aod/AODManager;

    iget-object v2, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->this$0:Lcom/samsung/android/aod/AODManager;

    iget-object v2, v2, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/aod/AODManager$AODDozeLock;-><init>(Lcom/samsung/android/aod/AODManager;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public release()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->this$0:Lcom/samsung/android/aod/AODManager;

    iget-object v1, v1, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string v3, "AODManager"

    goto :goto_1

    :pswitch_0
    iget-boolean v3, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->this$0:Lcom/samsung/android/aod/AODManager;

    invoke-static {v3}, Lcom/samsung/android/aod/AODManager;->access$000(Lcom/samsung/android/aod/AODManager;)Lcom/samsung/android/aod/IAODManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Lcom/samsung/android/aod/IAODManager;->releaseDoze(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "AODManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AODDozeLock RuntimeException?\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/aod/AODManager$AODDozeLock;->mHeld:Z

    goto :goto_2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "releaseDoze: skip due to state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class Landroid/mtp/MtpFileManager$MtpObjectObserver;
.super Landroid/os/FileObserver;
.source "MtpFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MtpObjectObserver"
.end annotation


# instance fields
.field private mObjectID:I

.field private mStoreID:I

.field final synthetic this$0:Landroid/mtp/MtpFileManager;


# direct methods
.method constructor <init>(Landroid/mtp/MtpFileManager;IILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpFileManager;

    const v0, 0x10007c8

    invoke-direct {p0, p4, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->mObjectID:I

    iput p2, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->mStoreID:I

    sget-object v0, Landroid/mtp/MtpFileManager;->sListFileObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    sget-object v0, Landroid/mtp/MtpFileManager;->TAG:Ljava/lang/String;

    const-string v1, "finalize MtpObjectObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpFileManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/mtp/MtpFileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got event StoreID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->mStoreID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ObjectID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->mObjectID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "mtptemp.tmp"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, ".mtp"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_1

    sget-object v1, Landroid/mtp/MtpFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Received Inotify overflow event!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_2

    sget-object v1, Landroid/mtp/MtpFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Got inotify delete self event :: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/mtp/MtpFileManager;->sListFileObserver:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_8

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_4

    sget-object v1, Landroid/mtp/MtpFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Got inotify close_write event :: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpFileManager;

    iget v2, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->mStoreID:I

    iget v3, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->mObjectID:I

    invoke-virtual {v1, v2, v3, p2}, Landroid/mtp/MtpFileManager;->handleObjectPropChanged(IILjava/lang/String;)V

    goto :goto_2

    :cond_4
    and-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_7

    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/mtp/MtpFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Got inotify ignore event :: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    sget-object v1, Landroid/mtp/MtpFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Got unrecognized event "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    :goto_0
    sget-object v1, Landroid/mtp/MtpFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Got inotify removed event :: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpFileManager;

    iget v2, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->mStoreID:I

    iget v3, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->mObjectID:I

    invoke-virtual {v1, v2, v3, p2}, Landroid/mtp/MtpFileManager;->handleObjectRemoved(IILjava/lang/String;)V

    goto :goto_2

    :cond_8
    :goto_1
    sget-object v1, Landroid/mtp/MtpFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Got inotify added event :: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpFileManager;

    iget v2, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->mStoreID:I

    iget v3, p0, Landroid/mtp/MtpFileManager$MtpObjectObserver;->mObjectID:I

    invoke-virtual {v1, v2, v3, p2}, Landroid/mtp/MtpFileManager;->handleObjectAdded(IILjava/lang/String;)V

    :goto_2
    monitor-exit v0

    return-void

    :cond_9
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class Landroid/mtp/VStorageShare;
.super Landroid/mtp/VStorage;
.source "VStorage.java"


# instance fields
.field private enumerated:Z

.field public mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/mtp/VObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/content/Context;)V
    .locals 12

    const/4 v0, 0x1

    const v1, 0x20000001

    invoke-direct {p0, p2, v1, v0}, Landroid/mtp/VStorage;-><init>(Landroid/content/Context;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/mtp/VStorageShare;->mObjects:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/VStorageShare;->enumerated:Z

    const-string v1, "VMTP_SHARE_TITLE"

    invoke-virtual {p0, v1}, Landroid/mtp/VStorageShare;->getRString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/VStorageShare;->mName:Ljava/lang/String;

    if-eqz p1, :cond_6

    array-length v1, p1

    if-lez v1, :cond_6

    const-string v1, "VStorage"

    const-string v2, "VStorage of share created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_5

    aget-object v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "VStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file is not exsited "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v4, p0, Landroid/mtp/VStorageShare;->mTotalSize:J

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/mtp/VStorageShare;->mTotalSize:J

    iget-object v4, p0, Landroid/mtp/VStorageShare;->mObjects:Ljava/util/List;

    new-instance v11, Landroid/mtp/VObject;

    invoke-virtual {p0}, Landroid/mtp/VStorageShare;->getNewID()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Landroid/mtp/VObject;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Landroid/mtp/VStorageShare;->mTotalSize:J

    iput-wide v0, p0, Landroid/mtp/VStorageShare;->mFreeSize:J

    const-string v0, "VStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/mtp/VStorageShare;->mTotalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Free size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/mtp/VStorageShare;->mFreeSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method


# virtual methods
.method public dbChange()V
    .locals 4

    iget-object v0, p0, Landroid/mtp/VStorageShare;->mDbChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/mtp/VStorageShare;->mDbChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Landroid/mtp/VStorageShare;->mVStorageHandler:Landroid/os/Handler;

    new-instance v1, Landroid/mtp/VStorageShare$1;

    invoke-direct {v1, p0}, Landroid/mtp/VStorageShare$1;-><init>(Landroid/mtp/VStorageShare;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public getList(I)[Landroid/mtp/VObject;
    .locals 3

    iget-object v0, p0, Landroid/mtp/VStorageShare;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/mtp/VObject;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/mtp/VStorageShare;->mObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/mtp/VStorageShare;->mObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/VObject;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/mtp/VStorageShare;->enumerated:Z

    return-object v0
.end method

.method public removeDir(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/mtp/VStorageShare;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/VObject;

    iget-object v2, v1, Landroid/mtp/VObject;->mPath:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/mtp/VStorageShare;->enumerated:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/mtp/VStorageShare;->getID()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/mtp/VStorageShare;->sendVObjRemove(ILandroid/mtp/VObject;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/mtp/VStorageShare;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/VObject;

    iget-object v2, v1, Landroid/mtp/VObject;->mPath:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/mtp/VStorageShare;->getID()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/mtp/VStorageShare;->sendVObjRemove(ILandroid/mtp/VObject;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

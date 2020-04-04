.class Landroid/mtp/V1levelDir;
.super Landroid/mtp/VDir;
.source "VStorage.java"


# instance fields
.field public mObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/mtp/VObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/mtp/VStorage;Z)V
    .locals 1

    invoke-direct/range {p0 .. p9}, Landroid/mtp/VDir;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/mtp/VStorage;Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addFile(Ljava/lang/String;)V
    .locals 9

    iget-boolean v0, p0, Landroid/mtp/V1levelDir;->enumerated:Z

    if-nez v0, :cond_0

    const-string v0, "VStorage"

    const-string v1, "V1 directory is not enumerated yet"

    invoke-static {v0, v1}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VStorage"

    const-string v2, "V1levelDir add file is not file"

    invoke-static {v1, v2}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "VStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V1levelDir add file path is already added. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :cond_2
    new-instance v2, Landroid/mtp/VObject;

    iget-object v3, p0, Landroid/mtp/V1levelDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v3}, Landroid/mtp/VStorage;->getNewID()I

    move-result v4

    iget v5, p0, Landroid/mtp/V1levelDir;->mId:I

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/mtp/VObject;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/mtp/V1levelDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v3, p1, v2}, Landroid/mtp/VStorage;->saveMediaFile(Ljava/lang/String;Landroid/mtp/VObject;)V

    iget-boolean v3, p0, Landroid/mtp/V1levelDir;->enumerated:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/mtp/V1levelDir;->mStorage:Landroid/mtp/VStorage;

    iget-object v4, p0, Landroid/mtp/V1levelDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v4}, Landroid/mtp/VStorage;->getID()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/mtp/VStorage;->sendVObjAdd(ILandroid/mtp/VObject;)V

    :cond_3
    const-string v3, "VStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V1levelDir add file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getList()[Landroid/mtp/VObject;
    .locals 12

    iget-boolean v0, p0, Landroid/mtp/V1levelDir;->enumerated:Z

    if-nez v0, :cond_3

    const-string v0, "VStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V1levelDir getListDB type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/mtp/V1levelDir;->mMediaType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/mtp/V1levelDir;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/mtp/V1levelDir;->getListFromDB()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/mtp/VObject;

    iget-object v6, p0, Landroid/mtp/V1levelDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v6}, Landroid/mtp/VStorage;->getNewID()I

    move-result v7

    iget v8, p0, Landroid/mtp/V1levelDir;->mId:I

    const/4 v9, 0x1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Landroid/mtp/VObject;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Landroid/mtp/V1levelDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v6, v3, v5}, Landroid/mtp/VStorage;->saveMediaFile(Ljava/lang/String;Landroid/mtp/VObject;)V

    const-string v6, "VStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "V1levelDir add file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/mtp/V1levelDir;->enumerated:Z

    iget-object v2, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Landroid/mtp/VObject;

    iget-object v3, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/mtp/VObject;

    aput-object v6, v2, v1

    nop

    move v1, v5

    goto :goto_2

    :cond_4
    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public isListEmpty()Z
    .locals 2

    iget-object v0, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeList(Landroid/mtp/VObject;)V
    .locals 3

    iget-object v0, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    iget-object v2, p1, Landroid/mtp/VObject;->mPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/mtp/V1levelDir;->mObjects:Ljava/util/Map;

    iget-object v2, p1, Landroid/mtp/VObject;->mPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

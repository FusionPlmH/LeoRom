.class final Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$1;
.super Ljava/lang/Object;
.source "FileSyncManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 22

    move-object/from16 v1, p4

    const-string v2, "FileSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PREPARE To Sync : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "sync_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    const-string/jumbo v5, "tag"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string v5, "account_name"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v5, "account_type"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v5, p2

    check-cast v5, Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;

    move-object/from16 v15, p1

    invoke-interface {v5, v15}, Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;->prepareToSync(Landroid/content/Context;)Z

    move-result v11

    move-object/from16 v5, p2

    check-cast v5, Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;

    move-object v6, v15

    move-object v7, v2

    move-object v8, v3

    move-object v9, v12

    move-object v10, v14

    move v0, v11

    move-object v11, v13

    invoke-interface/range {v5 .. v11}, Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;->getLocalItems(Landroid/content/Context;[Ljava/lang/String;[J[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;->getSyncItemCount()I

    move-result v7

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;->getSyncItem()Ljava/util/Iterator;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/String;

    new-array v10, v7, [Ljava/lang/String;

    new-array v11, v7, [Ljava/lang/String;

    new-array v1, v7, [J

    move-object/from16 v16, v2

    new-array v2, v7, [Z

    const/16 v17, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    check-cast v3, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->getLocalId()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v9, v17

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->getSyncKey()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v10, v17

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->getTimestamp()J

    move-result-wide v20

    aput-wide v20, v1, v17

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->isDeleted()Z

    move-result v18

    aput-boolean v18, v2, v17

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem$SyncInnerItem;->getTag()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v11, v17

    add-int/lit8 v17, v17, 0x1

    nop

    move-object/from16 v3, v19

    goto :goto_0

    :cond_0
    move-object/from16 v19, v3

    const-string v3, "is_success"

    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "local_id"

    invoke-virtual {v6, v3, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v3, "sync_key"

    invoke-virtual {v6, v3, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v3, "deleted"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const-string/jumbo v3, "tag"

    invoke-virtual {v6, v3, v11}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v19, v3

    :goto_1
    return-object v6
.end method

.class final Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$3;
.super Ljava/lang/Object;
.source "RecordSyncManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;
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
    .locals 18

    move-object/from16 v0, p4

    const-string v1, "RecordSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "server_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "account_type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v6, p2

    check-cast v6, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;

    invoke-interface {v6}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->ready()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6, v1, v4, v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->getLocalRecordList([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v10, v9, [J

    new-array v11, v9, [J

    new-array v12, v9, [Z

    new-array v13, v9, [Ljava/lang/String;

    new-array v14, v9, [Ljava/lang/String;

    const/4 v15, 0x0

    :goto_0
    move/from16 v16, v15

    move/from16 v0, v16

    if-ge v0, v9, :cond_0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v17, v1

    move-object v1, v15

    check-cast v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;

    invoke-virtual {v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getLocalRecordId()J

    move-result-wide v15

    aput-wide v15, v10, v0

    invoke-virtual {v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v0

    invoke-virtual {v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getTimestamp()J

    move-result-wide v15

    aput-wide v15, v11, v0

    invoke-virtual {v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->isDeleted()Z

    move-result v15

    aput-boolean v15, v12, v0

    invoke-virtual {v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getTableName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v0

    add-int/lit8 v15, v0, 0x1

    move-object/from16 v1, v17

    move-object/from16 v0, p4

    goto :goto_0

    :cond_0
    move-object/from16 v17, v1

    const-string v0, "local_id"

    invoke-virtual {v5, v0, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v0, "server_id"

    invoke-virtual {v5, v0, v13}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "timestamp"

    invoke-virtual {v5, v0, v11}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v0, "deleted"

    invoke-virtual {v5, v0, v12}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const-string/jumbo v0, "table_name"

    invoke-virtual {v5, v0, v14}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object/from16 v17, v1

    :goto_1
    const-string v0, "is_success"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v5
.end method

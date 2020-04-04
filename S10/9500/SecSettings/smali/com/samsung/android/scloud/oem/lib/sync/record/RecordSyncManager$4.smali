.class final Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$4;
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
    .locals 46

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v0, "RecordSyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_LOCAL_FILES : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "local_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    const-string v0, "server_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v0, "deleted"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v5

    const-string/jumbo v0, "table_name"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v0, "cid_table_index"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    const/4 v0, 0x0

    if-nez v7, :cond_0

    const-string v10, "RecordSyncManager"

    const-string v11, "index is null..."

    invoke-static {v10, v11}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "is_success"

    invoke-virtual {v9, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v9

    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    array-length v11, v7

    new-array v11, v11, [Ljava/lang/String;

    array-length v12, v7

    new-array v12, v12, [Ljava/lang/String;

    array-length v13, v7

    new-array v13, v13, [Ljava/lang/String;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p2

    check-cast v2, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;

    if-eqz v3, :cond_3

    move/from16 v16, v0

    :goto_0
    move/from16 v17, v16

    array-length v0, v3

    move/from16 v18, v8

    move/from16 v8, v17

    if-ge v8, v0, :cond_2

    aget-wide v0, v3, v8

    aget-boolean v16, v5, v8

    move-object/from16 v27, v3

    aget-object v3, v6, v8

    if-eqz v16, :cond_1

    invoke-interface {v2, v3, v0, v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->deleteRecord(Ljava/lang/String;J)V

    nop

    move-object/from16 v28, v5

    goto :goto_1

    :cond_1
    move-object/from16 v28, v5

    new-instance v5, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;

    aget-object v22, v4, v8

    const-wide/16 v23, 0x0

    move-object/from16 v19, v5

    move-wide/from16 v20, v0

    move/from16 v25, v16

    move-object/from16 v26, v3

    invoke-direct/range {v19 .. v26}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;-><init>(JLjava/lang/String;JZLjava/lang/String;)V

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v16, v8, 0x1

    move/from16 v8, v18

    move-object/from16 v3, v27

    move-object/from16 v5, v28

    const/4 v0, 0x0

    move-object/from16 v1, p3

    goto :goto_0

    :cond_2
    move-object/from16 v27, v3

    move-object/from16 v28, v5

    goto :goto_2

    :cond_3
    move-object/from16 v27, v3

    move-object/from16 v28, v5

    move/from16 v18, v8

    :goto_2
    const/4 v0, 0x0

    :goto_3
    array-length v1, v7

    if-ge v0, v1, :cond_7

    aget-object v1, v7, v0

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v5, 0x3

    if-ge v3, v5, :cond_4

    const-string v3, "RecordSyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "index format is wrong : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v7, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "is_success"

    const/4 v5, 0x0

    invoke-virtual {v9, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v9

    :cond_4
    const/4 v5, 0x0

    aget-object v3, v1, v5

    aput-object v3, v11, v0

    const/4 v3, 0x1

    aget-object v3, v1, v3

    aput-object v3, v12, v0

    const/4 v3, 0x2

    aget-object v3, v1, v3

    aput-object v3, v13, v0

    aget-object v3, v12, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v10, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v8, v5

    :goto_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    if-ge v8, v5, :cond_6

    aget-object v5, v12, v0

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v29, v1

    move-object/from16 v1, v16

    check-cast v1, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;

    invoke-virtual {v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v29

    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v29, v1

    aget-object v1, v12, v0

    invoke-interface {v14, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sync_toUploadFile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sync_toUploadFile_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v0, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v0

    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_9
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_f

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13

    move-object/from16 v30, v1

    :try_start_2
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11

    move-object/from16 v31, v4

    :try_start_3
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v32, v16

    move-object/from16 v33, v4

    const-string v4, "RecordSyncManager"
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f

    move-object/from16 v34, v6

    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    move-object/from16 v35, v7

    :try_start_5
    const-string/jumbo v7, "table : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v32

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v14, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v36, v4

    const-string v4, "RecordSyncManager"
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    move-object/from16 v37, v8

    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    move-object/from16 v38, v12

    :try_start_7
    const-string/jumbo v12, "total upload size... "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    if-lez v6, :cond_d

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const/16 v12, 0x1f4

    if-le v6, v12, :cond_a

    move/from16 v16, v12

    goto :goto_8

    :cond_a
    move/from16 v16, v6

    :goto_8
    move/from16 v39, v16

    const-string v12, "RecordSyncManager"
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-object/from16 v40, v15

    :try_start_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move-object/from16 v41, v5

    :try_start_9
    const-string v5, "now upload size... "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v39

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    const/16 v12, 0x1f4

    mul-int v12, v12, v36

    move v15, v12

    :goto_9
    move-object/from16 v42, v3

    add-int v3, v12, v5

    if-ge v15, v3, :cond_b

    :try_start_a
    invoke-interface {v14, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v42

    goto :goto_9

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;

    move-object/from16 v43, v3

    invoke-virtual {v15}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getTableName()Ljava/lang/String;

    move-result-object v3

    move/from16 v45, v5

    move/from16 v44, v6

    invoke-virtual {v15}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getLocalRecordId()J

    move-result-wide v5

    invoke-interface {v2, v3, v5, v6}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->getRecord(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "record_id"

    invoke-virtual {v15}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    nop

    move-object/from16 v3, v43

    move/from16 v6, v44

    move/from16 v5, v45

    goto :goto_a

    :cond_c
    move/from16 v45, v5

    move/from16 v44, v6

    const-string v3, "records"

    invoke-virtual {v8, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "RecordSyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "payload : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v5, "1QAZXSW2"

    invoke-virtual {v3, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v3, "cid:"

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v11, v5

    invoke-virtual {v3, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string/jumbo v3, "tableName:"

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string/jumbo v3, "tableVersion:"

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v13, v5

    invoke-virtual {v3, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    add-int/lit8 v36, v36, 0x1

    sub-int v6, v44, v45

    invoke-interface {v0}, Ljava/util/List;->clear()V

    nop

    move-object/from16 v15, v40

    move-object/from16 v5, v41

    move-object/from16 v3, v42

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v42, v3

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object/from16 v42, v3

    goto/16 :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v41, v5

    goto/16 :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v41, v5

    goto/16 :goto_c

    :cond_d
    move-object/from16 v42, v3

    move-object/from16 v41, v5

    move-object/from16 v40, v15

    move-object/from16 v4, v33

    move-object/from16 v6, v34

    move-object/from16 v7, v35

    move-object/from16 v8, v37

    move-object/from16 v12, v38

    goto/16 :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v41, v5

    move-object/from16 v40, v15

    goto/16 :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v41, v5

    move-object/from16 v40, v15

    goto/16 :goto_c

    :catch_7
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v41, v5

    move-object/from16 v38, v12

    move-object/from16 v40, v15

    goto/16 :goto_b

    :catch_8
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v41, v5

    move-object/from16 v38, v12

    move-object/from16 v40, v15

    goto/16 :goto_c

    :catch_9
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v41, v5

    move-object/from16 v37, v8

    move-object/from16 v38, v12

    move-object/from16 v40, v15

    goto/16 :goto_b

    :catch_a
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v41, v5

    move-object/from16 v37, v8

    move-object/from16 v38, v12

    move-object/from16 v40, v15

    goto/16 :goto_c

    :catch_b
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v41, v5

    move-object/from16 v35, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v12

    move-object/from16 v40, v15

    goto/16 :goto_b

    :catch_c
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v41, v5

    move-object/from16 v35, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v12

    move-object/from16 v40, v15

    goto/16 :goto_c

    :cond_e
    move-object/from16 v42, v3

    move-object/from16 v41, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v12

    move-object/from16 v40, v15

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    goto/16 :goto_d

    :catch_d
    move-exception v0

    goto/16 :goto_b

    :catch_e
    move-exception v0

    goto/16 :goto_c

    :catch_f
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v41, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v12

    move-object/from16 v40, v15

    goto :goto_b

    :catch_10
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v41, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v12

    move-object/from16 v40, v15

    goto :goto_c

    :catch_11
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v31, v4

    move-object/from16 v41, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v12

    move-object/from16 v40, v15

    goto :goto_b

    :catch_12
    move-exception v0

    move-object/from16 v42, v3

    move-object/from16 v31, v4

    move-object/from16 v41, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v12

    move-object/from16 v40, v15

    goto :goto_c

    :catch_13
    move-exception v0

    move-object/from16 v30, v1

    move-object/from16 v42, v3

    move-object/from16 v31, v4

    move-object/from16 v41, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v12

    move-object/from16 v40, v15

    :goto_b
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    :catch_14
    move-exception v0

    move-object/from16 v30, v1

    move-object/from16 v42, v3

    move-object/from16 v31, v4

    move-object/from16 v41, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v12

    move-object/from16 v40, v15

    :goto_c
    const/4 v8, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_e

    :cond_f
    move-object/from16 v30, v1

    move-object/from16 v42, v3

    move-object/from16 v31, v4

    move-object/from16 v41, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v37, v8

    move-object/from16 v38, v12

    move-object/from16 v40, v15

    :goto_d
    move/from16 v8, v18

    :goto_e
    const-string/jumbo v0, "upload_file_path"

    move-object/from16 v1, v42

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "download_file_path"

    move-object/from16 v3, v41

    invoke-virtual {v9, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_success"

    invoke-virtual {v9, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v9
.end method

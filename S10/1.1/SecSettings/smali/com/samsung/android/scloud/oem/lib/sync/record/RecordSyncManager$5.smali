.class final Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$5;
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
    .locals 32

    move-object/from16 v1, p4

    const-string v0, "RecordSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FILE_WRITE_DONE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "local_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    const-string v0, "server_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "table_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v0, "download_file_path"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    const/4 v0, 0x0

    if-nez v6, :cond_0

    const-string v10, "is_success"

    invoke-virtual {v8, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v8

    :cond_0
    if-eqz v4, :cond_1

    move v10, v0

    :goto_0
    array-length v11, v4

    if-ge v10, v11, :cond_1

    aget-object v11, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v13, p2

    check-cast v13, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;

    :try_start_0
    new-instance v14, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-direct {v14, v15, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v14

    new-instance v14, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v11, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    if-eqz v16, :cond_c

    const-string v0, "--"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    const-string v0, "records"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v17, v0

    const/4 v0, 0x0

    :goto_2
    move/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    move/from16 v3, v18

    if-ge v3, v0, :cond_6

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v20, v0

    const-string v0, "RecordSyncManager"

    move-object/from16 v21, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v22, v4

    :try_start_2
    const-string v4, "object : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move/from16 v23, v7

    move-object/from16 v4, v20

    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "record_id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    aget-wide v17, v2, v7

    move-wide/from16 v24, v17

    aget-object v0, v5, v7

    move-object/from16 v26, v0

    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_3

    const-wide/16 v17, 0x0

    move-object/from16 v28, v1

    move-object/from16 v27, v2

    move-wide/from16 v1, v24

    cmp-long v0, v1, v17

    if-lez v0, :cond_2

    move-object/from16 v29, v5

    move-object/from16 v5, v26

    :try_start_4
    invoke-interface {v13, v5, v4, v1, v2}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->updateRecord(Ljava/lang/String;Lorg/json/JSONObject;J)Z

    move-result v0

    goto :goto_4

    :cond_2
    move-object/from16 v29, v5

    move-object/from16 v5, v26

    goto :goto_3

    :cond_3
    move-object/from16 v28, v1

    move-object/from16 v27, v2

    move-object/from16 v29, v5

    move-wide/from16 v1, v24

    move-object/from16 v5, v26

    :goto_3
    invoke-interface {v13, v5, v4}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->createRecord(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    move/from16 v16, v0

    if-nez v16, :cond_4

    :try_start_5
    const-string v0, "is_success"

    move-wide/from16 v30, v1

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    nop

    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v1, v0

    const/16 v16, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return-object v8

    :catchall_0
    move-exception v0

    move-object v1, v0

    move/from16 v7, v16

    goto/16 :goto_10

    :catch_1
    move-exception v0

    move/from16 v7, v16

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move/from16 v7, v16

    goto/16 :goto_c

    :catch_3
    move-exception v0

    move/from16 v7, v16

    goto/16 :goto_d

    :cond_4
    nop

    add-int/lit8 v0, v3, 0x1

    move/from16 v7, v16

    move-object/from16 v1, v19

    move-object/from16 v17, v21

    move-object/from16 v4, v22

    move-object/from16 v2, v27

    move-object/from16 v5, v29

    move-object/from16 v3, p3

    goto/16 :goto_2

    :cond_5
    move-object/from16 v28, v1

    move-object/from16 v27, v2

    move-object/from16 v29, v5

    :try_start_7
    const-string v0, "is_success"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    nop

    nop

    :try_start_8
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move/from16 v23, v7

    :goto_6
    return-object v8

    :catchall_1
    move-exception v0

    move-object v1, v0

    move/from16 v7, v23

    goto/16 :goto_10

    :catch_5
    move-exception v0

    move/from16 v7, v23

    goto/16 :goto_b

    :catch_6
    move-exception v0

    move/from16 v7, v23

    goto/16 :goto_c

    :catch_7
    move-exception v0

    move/from16 v7, v23

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v29, v5

    move-object v1, v0

    move/from16 v7, v23

    goto/16 :goto_10

    :catch_8
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v29, v5

    move/from16 v7, v23

    goto/16 :goto_b

    :catch_9
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v29, v5

    move/from16 v7, v23

    goto/16 :goto_c

    :catch_a
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v29, v5

    move/from16 v7, v23

    goto/16 :goto_d

    :catchall_3
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v29, v5

    move/from16 v23, v7

    move-object v1, v0

    goto/16 :goto_10

    :catch_b
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v29, v5

    move/from16 v23, v7

    goto/16 :goto_b

    :catch_c
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v29, v5

    move/from16 v23, v7

    goto/16 :goto_c

    :catch_d
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v29, v5

    move/from16 v23, v7

    goto/16 :goto_d

    :cond_6
    move-object/from16 v27, v2

    move-object/from16 v22, v4

    move-object/from16 v29, v5

    move/from16 v23, v7

    const/4 v1, 0x0

    move v0, v1

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v22, v4

    move-object/from16 v29, v5

    move/from16 v23, v7

    move-object v1, v0

    goto/16 :goto_10

    :catch_e
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v22, v4

    move-object/from16 v29, v5

    move/from16 v23, v7

    goto/16 :goto_b

    :catch_f
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v22, v4

    move-object/from16 v29, v5

    move/from16 v23, v7

    goto/16 :goto_c

    :catch_10
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v22, v4

    move-object/from16 v29, v5

    move/from16 v23, v7

    goto/16 :goto_d

    :cond_7
    move-object/from16 v27, v2

    move-object/from16 v22, v4

    move-object/from16 v29, v5

    const/4 v1, 0x0

    :try_start_9
    const-string v0, "cid:"

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "tableName:"

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "tableVersion:"

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    const-string v0, "--1QAZXSW2"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "\r\n"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_a
    :goto_7
    const-string v0, "RecordSyncManager"

    const-string v2, "Start Boundary : 1QAZXSW2"

    invoke-static {v0, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    :goto_8
    const-string v0, "RecordSyncManager"

    invoke-static {v0, v15}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :goto_9
    move v0, v1

    move-object/from16 v4, v22

    move-object/from16 v2, v27

    move-object/from16 v5, v29

    :goto_a
    move-object/from16 v1, p4

    move-object/from16 v3, p3

    goto/16 :goto_1

    :catch_11
    move-exception v0

    goto :goto_b

    :catch_12
    move-exception v0

    goto :goto_c

    :catch_13
    move-exception v0

    goto :goto_d

    :cond_c
    move-object/from16 v27, v2

    move-object/from16 v22, v4

    move-object/from16 v29, v5

    :try_start_a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_17

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v22, v4

    move-object/from16 v29, v5

    move-object v1, v0

    goto :goto_10

    :catch_14
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v22, v4

    move-object/from16 v29, v5

    :goto_b
    const/4 v7, 0x0

    :try_start_b
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v11, :cond_d

    :try_start_c
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_17

    goto :goto_e

    :catch_15
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v22, v4

    move-object/from16 v29, v5

    :goto_c
    const/4 v7, 0x0

    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v11, :cond_d

    :try_start_e
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_17

    goto :goto_e

    :catch_16
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v22, v4

    move-object/from16 v29, v5

    :goto_d
    const/4 v7, 0x0

    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-eqz v11, :cond_d

    :try_start_10
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_17

    goto :goto_e

    :catch_17
    move-exception v0

    move-object v1, v0

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_e
    nop

    :cond_d
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_e
    :try_start_11
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_18

    goto :goto_f

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_f
    const-string v0, "is_success"

    invoke-virtual {v8, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v8

    :catchall_6
    move-exception v0

    move-object v1, v0

    :goto_10
    if-eqz v11, :cond_f

    :try_start_12
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_19

    goto :goto_11

    :catch_19
    move-exception v0

    move-object v2, v0

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_11
    throw v1
.end method

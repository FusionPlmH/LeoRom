.class Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;
.super Ljava/lang/Object;
.source "RecordClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p3

    move-object/from16 v12, p4

    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] PUT_RECORD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v13, v0

    const-string v0, "is_success"

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "path_list"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    const-string v0, "observing_uri"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "total"

    const-wide/16 v2, 0x0

    invoke-virtual {v12, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    if-eqz v11, :cond_a

    cmp-long v0, v16, v2

    if-nez v0, :cond_0

    move-object/from16 v24, v10

    move-object v5, v11

    move-object v6, v13

    move-object v3, v14

    goto/16 :goto_e

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    new-instance v0, Ljava/io/File;

    iget-object v4, v7, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v4, v15}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$300(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BACKUP_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_RestoredID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v0

    const/4 v0, 0x1

    new-array v0, v0, [J

    aput-wide v2, v0, v1

    move-object v3, v0

    :try_start_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/util/JsonReader;

    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/io/File;

    iget-object v6, v7, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v6, v15}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$300(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object/from16 v23, v3

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v24, v10

    move-object v5, v11

    move-object v6, v13

    move-object v3, v14

    move-object/from16 v14, v18

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v23, v3

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v24, v10

    move-object v5, v11

    move-object v6, v13

    move-object v3, v14

    move-object/from16 v14, v18

    goto/16 :goto_5

    :cond_1
    :try_start_2
    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;

    new-instance v6, Landroid/util/JsonWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    new-instance v21, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3$1;

    move-object/from16 v1, v21

    move-object v2, v7

    move-object v4, v14

    move-object/from16 v5, v20

    move-object/from16 v22, v6

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;[JLjava/lang/String;Landroid/net/Uri;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v1, v8

    move-object v8, v0

    move-object v2, v9

    move-object v9, v15

    move-object v4, v10

    move-object v10, v14

    move-object v5, v11

    move-object/from16 v11, v22

    move-object v6, v13

    move-wide/from16 v12, v16

    move-object/from16 v23, v3

    move-object v3, v14

    move-object/from16 v14, v21

    :try_start_3
    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/JsonWriter;JLcom/samsung/android/scloud/oem/lib/backup/IBackupClient$BackupProgressListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v14, v0

    :try_start_4
    invoke-virtual {v14}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->open()V

    new-instance v10, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;

    invoke-direct {v10, v2, v3}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v8, p2

    check-cast v8, Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;

    move-object v9, v15

    move-wide/from16 v11, v16

    move-object v13, v14

    invoke-interface/range {v8 .. v13}, Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;->restoreRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;JLcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v8, v0

    :try_start_5
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] restoreRecord: onCompleted: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/util/JsonReader;

    const-string/jumbo v0, "true"

    move-object v12, v0

    :try_start_6
    invoke-virtual {v11}, Landroid/util/JsonReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v13, v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v4

    const-string v4, "["

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] PUT_RECORD: result: "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    nop

    move-object/from16 v4, v24

    goto :goto_1

    :cond_2
    move-object/from16 v24, v4

    invoke-virtual {v14}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->release()V

    :try_start_7
    iget-object v0, v7, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$400(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    :cond_3
    iget-object v4, v7, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    new-instance v9, Landroid/util/JsonReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v11}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v4, v9}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$200(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v7, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$400(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_9

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v24, v4

    move-object v4, v0

    move/from16 v19, v8

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v19, v8

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v24, v4

    move-object v4, v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v24, v4

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v24, v4

    move-object v4, v0

    move-object/from16 v14, v18

    :goto_3
    goto/16 :goto_a

    :catch_5
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 v14, v18

    :goto_4
    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v23, v3

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v24, v10

    move-object v5, v11

    move-object v6, v13

    move-object v3, v14

    move-object v4, v0

    move-object/from16 v14, v18

    goto/16 :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v23, v3

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v24, v10

    move-object v5, v11

    move-object v6, v13

    move-object v3, v14

    move-object/from16 v14, v18

    :goto_5
    :try_start_8
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/util/JsonReader;

    const-string/jumbo v0, "true"

    move-object v9, v0

    :try_start_9
    invoke-virtual {v8}, Landroid/util/JsonReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v10, v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    :goto_7
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] PUT_RECORD: result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_4
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->release()V

    :cond_5
    :try_start_a
    iget-object v0, v7, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$400(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    :cond_6
    iget-object v4, v7, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    new-instance v8, Landroid/util/JsonReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v4, v8}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$200(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v7, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v4}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$400(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    nop

    :goto_8
    move/from16 v8, v19

    :goto_9
    const-string v0, "is_success"

    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v6

    :catchall_5
    move-exception v0

    move-object v4, v0

    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/util/JsonReader;

    const-string/jumbo v0, "true"

    move-object v10, v0

    :try_start_b
    invoke-virtual {v9}, Landroid/util/JsonReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_c

    :catch_9
    move-exception v0

    move-object v11, v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    :goto_c
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] PUT_RECORD: result: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_7
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->release()V

    :cond_8
    :try_start_c
    iget-object v0, v7, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$400(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_9

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    :cond_9
    iget-object v8, v7, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    new-instance v9, Landroid/util/JsonReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v8, v9}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$200(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v8, v7, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$3;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v8}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$400(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_d

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_d
    throw v4

    :cond_a
    move-object/from16 v24, v10

    move-object v5, v11

    move-object v6, v13

    move-object v3, v14

    :goto_e
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] PUT_RECORD: pathList is null or totalCount is zero"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

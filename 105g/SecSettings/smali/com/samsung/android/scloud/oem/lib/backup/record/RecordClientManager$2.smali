.class Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2;
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

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] GET_RECORD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v12, v0

    const-string v0, "is_success"

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "record_pfd"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/ParcelFileDescriptor;

    const-string v0, "idlist_file"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/ParcelFileDescriptor;

    const/16 v16, 0x0

    if-eqz v13, :cond_3

    if-nez v11, :cond_0

    move-object/from16 v10, p1

    move-object v5, v11

    move-object v6, v12

    move-object v1, v13

    goto/16 :goto_4

    :cond_0
    iget-object v0, v7, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$100(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    :cond_1
    move-object v10, v0

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v0}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$100(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$200(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v9

    const-string v0, "observing_uri"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/4 v0, 0x1

    new-array v3, v0, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    :try_start_0
    new-instance v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;

    new-instance v6, Landroid/util/JsonWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v6, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v4, v1

    new-instance v18, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2$1;

    move-object/from16 v1, v18

    move-object v2, v7

    move-wide/from16 v19, v4

    move-object v4, v15

    move-object/from16 v5, v17

    move-object/from16 v21, v6

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2$1;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$2;[JLjava/lang/String;Landroid/net/Uri;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v1, v8

    move-object v8, v0

    move-object v2, v9

    move-object/from16 v9, p1

    move-object v4, v10

    move-object v10, v15

    move-object v5, v11

    move-object/from16 v11, v21

    move-object/from16 v22, v1

    move-object v6, v12

    move-object v1, v13

    move-wide/from16 v12, v19

    move-object/from16 v14, v18

    :try_start_1
    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/JsonWriter;JLcom/samsung/android/scloud/oem/lib/backup/IBackupClient$BackupProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v8, v0

    :try_start_2
    invoke-virtual {v8}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->open()V

    move-object/from16 v0, p2

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v10, p1

    :try_start_3
    invoke-interface {v0, v10, v8, v2}, Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;->backupRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;Ljava/util/ArrayList;)Z

    move-result v0

    move v11, v0

    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] backupRecord: onCompleted: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    invoke-virtual {v8}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->release()V

    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v12, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    :goto_0
    nop

    const-string v0, "is_success"

    invoke-virtual {v6, v0, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v6

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v10, p1

    :goto_1
    move-object v11, v8

    move-object v8, v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v10, p1

    move-object v8, v0

    move-object/from16 v11, v16

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v22, v8

    move-object v2, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v1, v13

    move-object/from16 v10, p1

    move-object v8, v0

    move-object/from16 v11, v16

    :goto_2
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;->release()V

    :cond_2
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v12, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    throw v8

    :cond_3
    move-object/from16 v10, p1

    move-object v5, v11

    move-object v6, v12

    move-object v1, v13

    :goto_4
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] pfd is null or uploadList is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

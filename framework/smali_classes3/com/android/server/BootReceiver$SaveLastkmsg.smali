.class Lcom/android/server/BootReceiver$SaveLastkmsg;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveLastkmsg"
.end annotation


# instance fields
.field private final AUTO_COMMENT:Ljava/lang/String;

.field private final AUTO_COMMENT_SAVE:Ljava/lang/String;

.field private final KERNEL_VERSION:Ljava/lang/String;

.field private final LAST_KLOG:Ljava/lang/String;

.field private final LAST_KMSG:Ljava/lang/String;

.field private final LAST_KMSG_SAVE:Ljava/lang/String;

.field private final LAST_SUMMARY:Ljava/lang/String;

.field private final LAST_TZLOG:Ljava/lang/String;

.field private final MAX_LAST_AUTO:I

.field private final MAX_LAST_KMSG:I

.field private final RESET_REASON:Ljava/lang/String;

.field private final STORE_KMSG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/BootReceiver;


# direct methods
.method private constructor <init>(Lcom/android/server/BootReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string p1, "/proc/last_kmsg"

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->LAST_KMSG:Ljava/lang/String;

    const-string p1, "/proc/reset_summary"

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->LAST_SUMMARY:Ljava/lang/String;

    const-string p1, "/proc/reset_klog"

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->LAST_KLOG:Ljava/lang/String;

    const-string p1, "/proc/reset_tzlog"

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->LAST_TZLOG:Ljava/lang/String;

    const-string p1, "/proc/auto_comment"

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->AUTO_COMMENT:Ljava/lang/String;

    const-string p1, "/data/log/dumpstate_lastkmsg"

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->LAST_KMSG_SAVE:Ljava/lang/String;

    const-string p1, "/data/log/dumpstate_auto_comment"

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->AUTO_COMMENT_SAVE:Ljava/lang/String;

    const-string p1, "/proc/reset_reason"

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->RESET_REASON:Ljava/lang/String;

    const-string p1, "/proc/store_lastkmsg"

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->STORE_KMSG:Ljava/lang/String;

    const-string p1, "/proc/version"

    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->KERNEL_VERSION:Ljava/lang/String;

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->MAX_LAST_KMSG:I

    const/16 p1, 0xa

    iput p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->MAX_LAST_AUTO:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BootReceiver;Lcom/android/server/BootReceiver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>(Lcom/android/server/BootReceiver;)V

    return-void
.end method

.method private logLastKmsg()V
    .locals 36

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/last_kmsg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    new-instance v0, Ljava/io/File;

    const-string v2, "/proc/reset_summary"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    new-instance v0, Ljava/io/File;

    const-string v3, "/proc/reset_klog"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    new-instance v0, Ljava/io/File;

    const-string v4, "/proc/reset_tzlog"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    new-instance v0, Ljava/io/File;

    const-string v5, "/proc/version"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    new-instance v0, Ljava/io/File;

    const-string v6, "/proc/auto_comment"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    new-instance v0, Ljava/io/File;

    const-string v7, "/proc/reset_reason"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    new-instance v0, Ljava/io/File;

    const-string v8, "/proc/store_lastkmsg"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    const/16 v0, 0x800

    new-array v9, v0, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    move-object v15, v0

    const-string v0, "BootReceiver"

    move-object/from16 v16, v10

    const-string/jumbo v10, "logLastKmsg - Start"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v15}, Landroid/text/format/Time;->setToNow()V

    const/4 v10, 0x0

    const-string v0, "NA"

    move-object/from16 v17, v0

    :try_start_0
    const-string v0, "\n"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v18, v10

    const/4 v10, 0x4

    :try_start_1
    invoke-static {v8, v10, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v0

    nop

    move-object/from16 v19, v8

    move-object/from16 v20, v11

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v18, v10

    :goto_0
    const-string v10, "Store_LasgKmsg"

    move-object/from16 v19, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v11

    const-string/jumbo v11, "readTextFile error"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, v18

    :goto_1
    const-string v0, "Store_lastKmsg"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validString = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v11, 0x1

    if-lt v0, v11, :cond_2

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v0, "1"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x400

    :try_start_2
    const-string v11, "\n"

    invoke-static {v7, v0, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v0

    nop

    move-object/from16 v21, v7

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v11, "Reset_Reason"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    const-string/jumbo v7, "readTextFile error"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    :goto_2
    const-string v7, "Reset_Reason"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resetString = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    :cond_1
    move-object v7, v0

    goto :goto_4

    :cond_2
    move-object/from16 v21, v7

    :goto_3
    move-object/from16 v7, v17

    :goto_4
    const-string v0, "%Y%m%d_%H%M%S"

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v10

    const-string v10, "/data/log/dumpstate_lastkmsg_"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".log.gz"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v12

    const-string v12, "/data/log/dumpstate_auto_comment_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".lst"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    const/4 v0, 0x0

    :try_start_3
    const-string v12, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v15, v12}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_15
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    move-object v8, v12

    :try_start_4
    const-string v12, "========================================================\n"

    move/from16 v24, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_14
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    move-object/from16 v25, v7

    :try_start_5
    const-string v7, "== dumpstate lastkmsg : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "BootReceiver"
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_13
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    move-object/from16 v26, v8

    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_12
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    move-object/from16 v27, v13

    :try_start_7
    const-string/jumbo v13, "logLastKmsg - New filename is "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    if-eqz v7, :cond_3

    :try_start_8
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    goto :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v35, v2

    move-object/from16 v31, v3

    move-object/from16 v7, v16

    move-object/from16 v12, v23

    move-object/from16 v13, v27

    :goto_6
    move-object v1, v0

    goto/16 :goto_21

    :catch_3
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object/from16 v7, v16

    move-object/from16 v12, v23

    move-object/from16 v8, v26

    move-object/from16 v13, v27

    goto/16 :goto_1a

    :cond_3
    :try_start_9
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    goto :goto_5

    :goto_7
    :try_start_a
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    move-object v13, v8

    :try_start_b
    new-instance v8, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v8, v13}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v14, v8

    new-instance v8, Ljava/util/zip/ZipEntry;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-object/from16 v28, v1

    :try_start_c
    const-string v1, "dumpstate_lastkmsg"

    invoke-direct {v8, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    const-string v1, "\n[Kernel version]: "

    move-object v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v1, :cond_5

    :try_start_d
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :goto_8
    :try_start_e
    invoke-virtual {v1, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v8
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move/from16 v29, v8

    if-lez v8, :cond_4

    move-object/from16 v30, v1

    move/from16 v8, v29

    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {v14, v9, v1, v8}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move/from16 v24, v8

    move-object/from16 v1, v30

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v35, v2

    move-object/from16 v31, v3

    move-object/from16 v12, v30

    goto/16 :goto_21

    :catch_4
    move-exception v0

    move-object/from16 v31, v3

    move-object/from16 v8, v26

    move-object/from16 v12, v30

    goto/16 :goto_1a

    :cond_4
    move-object/from16 v30, v1

    move/from16 v8, v29

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v30, v1

    move-object v1, v0

    move-object/from16 v35, v2

    move-object/from16 v31, v3

    move-object/from16 v12, v30

    goto/16 :goto_21

    :catch_5
    move-exception v0

    move-object/from16 v30, v1

    move-object/from16 v31, v3

    move-object/from16 v8, v26

    move-object/from16 v12, v30

    goto/16 :goto_1a

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v35, v2

    move-object/from16 v31, v3

    move-object/from16 v12, v23

    goto/16 :goto_21

    :catch_6
    move-exception v0

    move-object/from16 v31, v3

    move-object/from16 v12, v23

    :goto_9
    move-object/from16 v8, v26

    goto/16 :goto_1a

    :cond_5
    :try_start_10
    const-string/jumbo v1, "unknown"

    move-object v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    move-object/from16 v1, v23

    move/from16 v8, v24

    :goto_a
    :try_start_11
    const-string v16, "[Build Fingerprint]: "
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object/from16 v0, v16

    move-object/from16 v31, v3

    :try_start_12
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/zip/ZipOutputStream;->write([B)V

    const-string/jumbo v3, "ro.build.fingerprint"

    move-object/from16 v32, v0

    const-string/jumbo v0, "unknown"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    const-string v0, "\n\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/zip/ZipOutputStream;->write([B)V

    :goto_b
    invoke-virtual {v7, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    move v8, v3

    if-lez v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v14, v9, v3, v8}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_b

    :cond_6
    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v13, v7

    new-instance v7, Ljava/util/zip/ZipEntry;

    move-object/from16 v34, v0

    const-string v0, "dumpstate_auto_comment.lst"

    invoke-direct {v7, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v3, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v0, v7

    if-lez v7, :cond_7

    const/4 v7, 0x0

    invoke-virtual {v13, v9, v7, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v14, v9, v7, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_c

    :cond_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_d

    :cond_8
    move-object/from16 v34, v0

    move-object v3, v7

    move v0, v8

    :goto_d
    invoke-static {}, Lcom/android/server/BootReceiver;->access$300()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v7

    new-instance v7, Ljava/util/zip/ZipEntry;

    const-string/jumbo v8, "reset_summary.html"

    invoke-direct {v7, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v3, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v0, v7

    if-lez v7, :cond_9

    const/4 v7, 0x0

    invoke-virtual {v14, v9, v7, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_e

    :cond_9
    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_a
    invoke-static {}, Lcom/android/server/BootReceiver;->access$300()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_c

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v7

    new-instance v7, Ljava/util/zip/ZipEntry;

    const-string/jumbo v8, "ocimem.lst"

    invoke-direct {v7, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v3, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v0, v7

    if-lez v7, :cond_b

    const/4 v7, 0x0

    invoke-virtual {v14, v9, v7, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_f

    :cond_b
    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :cond_c
    if-eqz v3, :cond_d

    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    :cond_d
    :goto_10
    if-eqz v1, :cond_e

    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    goto :goto_11

    :catch_8
    move-exception v0

    :cond_e
    :goto_11
    :try_start_16
    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    goto :goto_12

    :catch_9
    move-exception v0

    :goto_12
    :try_start_17
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    nop

    :goto_13
    move-object/from16 v35, v2

    move-object/from16 v8, v26

    goto/16 :goto_1f

    :catchall_4
    move-exception v0

    move-object v12, v1

    move-object/from16 v35, v2

    move-object v7, v3

    goto/16 :goto_6

    :catch_b
    move-exception v0

    move-object v12, v1

    move-object v7, v3

    goto/16 :goto_9

    :catchall_5
    move-exception v0

    move-object v12, v1

    move-object/from16 v35, v2

    goto/16 :goto_6

    :catch_c
    move-exception v0

    move-object v12, v1

    goto/16 :goto_9

    :catchall_6
    move-exception v0

    move-object/from16 v31, v3

    move-object v12, v1

    move-object/from16 v35, v2

    move-object v1, v0

    goto :goto_14

    :catch_d
    move-exception v0

    move-object/from16 v31, v3

    move-object v12, v1

    goto :goto_15

    :catchall_7
    move-exception v0

    move-object/from16 v31, v3

    move-object v1, v0

    move-object/from16 v35, v2

    move-object/from16 v12, v23

    :goto_14
    goto/16 :goto_21

    :catch_e
    move-exception v0

    move-object/from16 v31, v3

    move-object/from16 v12, v23

    :goto_15
    move-object/from16 v8, v26

    goto/16 :goto_1a

    :catchall_8
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object v1, v0

    move-object/from16 v35, v2

    move-object/from16 v12, v23

    goto :goto_17

    :catch_f
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object/from16 v12, v23

    move-object/from16 v8, v26

    goto :goto_19

    :catchall_9
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object v1, v0

    move-object/from16 v35, v2

    goto :goto_16

    :catch_10
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    goto :goto_18

    :catchall_a
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object v1, v0

    move-object/from16 v35, v2

    move-object/from16 v7, v16

    :goto_16
    move-object/from16 v12, v23

    move-object/from16 v13, v27

    :goto_17
    goto/16 :goto_21

    :catch_11
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object/from16 v7, v16

    :goto_18
    move-object/from16 v12, v23

    move-object/from16 v8, v26

    move-object/from16 v13, v27

    :goto_19
    goto/16 :goto_1a

    :catchall_b
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object/from16 v27, v13

    move-object v1, v0

    move-object/from16 v35, v2

    move-object/from16 v7, v16

    move-object/from16 v12, v23

    goto/16 :goto_21

    :catch_12
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object/from16 v27, v13

    move-object/from16 v7, v16

    move-object/from16 v12, v23

    move-object/from16 v8, v26

    goto/16 :goto_1a

    :catchall_c
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object/from16 v26, v8

    move-object/from16 v27, v13

    move-object v1, v0

    move-object/from16 v35, v2

    move-object/from16 v7, v16

    move-object/from16 v12, v23

    goto/16 :goto_21

    :catch_13
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object/from16 v26, v8

    move-object/from16 v27, v13

    move-object/from16 v7, v16

    move-object/from16 v12, v23

    goto :goto_1a

    :catchall_d
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v13

    move-object v1, v0

    move-object/from16 v35, v2

    move-object/from16 v7, v16

    move-object/from16 v12, v23

    goto/16 :goto_21

    :catch_14
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v13

    move-object/from16 v7, v16

    move-object/from16 v12, v23

    goto :goto_1a

    :catchall_e
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object/from16 v25, v7

    move-object/from16 v27, v13

    move-object v1, v0

    move-object/from16 v35, v2

    move-object/from16 v26, v8

    move-object/from16 v7, v16

    move-object/from16 v12, v23

    goto/16 :goto_21

    :catch_15
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move-object/from16 v25, v7

    move-object/from16 v27, v13

    move-object/from16 v7, v16

    move-object/from16 v12, v23

    :goto_1a
    :try_start_18
    const-string v1, "BootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    move-object/from16 v35, v2

    :try_start_19
    const-string/jumbo v2, "logLastKmsg - File copy error"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_f

    if-eqz v7, :cond_f

    :try_start_1a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_16

    goto :goto_1b

    :catch_16
    move-exception v0

    :cond_f
    :goto_1b
    if-eqz v12, :cond_10

    :try_start_1b
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_17

    goto :goto_1c

    :catch_17
    move-exception v0

    :cond_10
    :goto_1c
    if-eqz v14, :cond_11

    :try_start_1c
    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_18

    goto :goto_1d

    :catch_18
    move-exception v0

    :cond_11
    :goto_1d
    if-eqz v13, :cond_12

    :try_start_1d
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_19

    goto :goto_1e

    :catch_19
    move-exception v0

    nop

    :cond_12
    :goto_1e
    move-object v3, v7

    move-object v1, v12

    :goto_1f
    :try_start_1e
    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a0

    const/16 v7, 0x3e8

    const/16 v12, 0x3ef

    invoke-static {v0, v2, v7, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception v0

    const-string v2, "BootReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dumpstate_lastkmsg - getCanonicalPath error"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    const-string v0, "BootReceiver"

    const-string/jumbo v2, "logLastKmsg - Save Complete"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_f
    move-exception v0

    move-object v1, v0

    move-object/from16 v26, v8

    goto :goto_21

    :catchall_10
    move-exception v0

    move-object/from16 v35, v2

    move-object v1, v0

    move-object/from16 v26, v8

    :goto_21
    if-eqz v7, :cond_13

    :try_start_1f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1b

    goto :goto_22

    :catch_1b
    move-exception v0

    :cond_13
    :goto_22
    if-eqz v12, :cond_14

    :try_start_20
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1c

    goto :goto_23

    :catch_1c
    move-exception v0

    :cond_14
    :goto_23
    if-eqz v14, :cond_15

    :try_start_21
    invoke-virtual {v14}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_1d

    goto :goto_24

    :catch_1d
    move-exception v0

    :cond_15
    :goto_24
    if-eqz v13, :cond_16

    :try_start_22
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1e

    goto :goto_25

    :catch_1e
    move-exception v0

    :cond_16
    :goto_25
    throw v1
.end method

.method private trimLastKmsg()V
    .locals 10

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    return-void

    :cond_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    array-length v5, v1

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "dumpstate_lastkmsg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-instance v5, Lcom/android/server/BootReceiver$SaveLastkmsg$1;

    invoke-direct {v5, p0}, Lcom/android/server/BootReceiver$SaveLastkmsg$1;-><init>(Lcom/android/server/BootReceiver$SaveLastkmsg;)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v5, "BootReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trimLastKmsg - Num of existing listOfLastkmsg is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_4

    const-string v5, "BootReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trimLastKmsg - Delete file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v5

    const-string v6, "BootReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "trimLastKmsg error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    return-void

    :cond_5
    if-nez v1, :cond_6

    return-void

    :cond_6
    array-length v5, v1

    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_8

    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "dumpstate_auto_comment"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    new-instance v5, Lcom/android/server/BootReceiver$SaveLastkmsg$2;

    invoke-direct {v5, p0}, Lcom/android/server/BootReceiver$SaveLastkmsg$2;-><init>(Lcom/android/server/BootReceiver$SaveLastkmsg;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v5, "BootReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trimLastKmsg - Num of existing listOfAutocomment is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_9

    const-string v5, "BootReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trimAutoComment - Delete file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :cond_9
    goto :goto_5

    :catch_1
    move-exception v4

    const-string v5, "BootReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trimAutoComment error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->trimLastKmsg()V

    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->logLastKmsg()V

    return-void
.end method
